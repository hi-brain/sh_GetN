// -*- C++ -*-
/*!
 * @file  sh_GetN.cpp
 * @brief ModuleDescription
 * @date $Date$
 *
 * $Id$
 */

#include "sh_GetN.h"

// Module specification
// <rtc-template block="module_spec">
static const char* sh_getn_spec[] =
  {
    "implementation_id", "sh_GetN",
    "type_name",         "sh_GetN",
    "description",       "ModuleDescription",
    "version",           "1.0.0",
    "vendor",            "VenderName",
    "category",          "Category",
    "activity_type",     "PERIODIC",
    "kind",              "DataFlowComponent",
    "max_instance",      "1",
    "language",          "C++",
    "lang_type",         "compile",
    ""
  };
// </rtc-template>

/*!
 * @brief constructor
 * @param manager Maneger Object
 */
sh_GetN::sh_GetN(RTC::Manager* manager)
    // <rtc-template block="initializer">
  : RTC::DataFlowComponentBase(manager),
    m_input1In("input1", m_input1),
    m_input2In("input2", m_input2),
    m_output1Out("output1", m_output1),
    m_output2Out("output2", m_output2)

    // </rtc-template>
{
}

/*!
 * @brief destructor
 */
sh_GetN::~sh_GetN()
{
}



RTC::ReturnCode_t sh_GetN::onInitialize()
{
  // Registration: InPort/OutPort/Service
  // <rtc-template block="registration">
  // Set InPort buffers
  addInPort("input1", m_input1In);
  addInPort("input2", m_input2In);
  
  // Set OutPort buffer
  addOutPort("output1", m_output1Out);
  addOutPort("output2", m_output2Out);
  
  // Set service provider to Ports
  
  // Set service consumers to Ports
  
  // Set CORBA Service Ports
  
  // </rtc-template>

  // <rtc-template block="bind_config">
  // </rtc-template>
  
  return RTC::RTC_OK;
}

/*
RTC::ReturnCode_t sh_GetN::onFinalize()
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t sh_GetN::onStartup(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t sh_GetN::onShutdown(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/


RTC::ReturnCode_t sh_GetN::onActivated(RTC::UniqueId ec_id)
{
	if(!shGetNInitialize()){
		std::cerr << "ライブラリを初期化できません" << std::endl;
		return RTC::RTC_ERROR;
	}
	return RTC::RTC_OK;
}


RTC::ReturnCode_t sh_GetN::onDeactivated(RTC::UniqueId ec_id)
{
	shGetNTerminate();
	return RTC::RTC_OK;
}


RTC::ReturnCode_t sh_GetN::onExecute(RTC::UniqueId ec_id)
{
	if(!m_input2In.isNew()){
		return RTC::RTC_OK;
	}
	m_input2In.read();

	std::cerr << "new data is coming (shGetN)" << std::endl;


	//データの復元
	m_input2In.read();
	double c = m_input2.pop_length;//18522
	double d = m_input2.pop_width;//28
	std::cerr << "shGetN:	pop_x = " << c << "	pop_y = " << d << std::endl;//popのインデックス

	double a = m_input2.ind_length;//2
	double b = m_input2.ind_width;//4
	std::cerr << "shGetN:	ind_x = " << a << "	ind_y = " << b << std::endl;//indのインデックス

	double test=0;
	int num = 0;

	mwArray pop_copy(m_input2.pop_length, m_input2.pop_width, mxDOUBLE_CLASS);//pop_copyの入れ物の型宣言

	double *data_copy_pop = new double [m_input2.pop_length * m_input2.pop_width];//入れ物の確保
	for (num = 0; num < m_input2.pop_length * m_input2.pop_width ; num++) {
		data_copy_pop[num] = m_input2.pop[num];
	}

	pop_copy.SetData(data_copy_pop, m_input2.pop_length * m_input2.pop_width);//pop
		
	mwArray ind_copy(m_input2.ind_length, m_input2.ind_width, mxDOUBLE_CLASS);

	double *data_copy_ind = new double [m_input2.ind_length * m_input2.ind_width];
	for (num = 0; num < m_input2.ind_length * m_input2.ind_width ; num++) {
		data_copy_ind[num] = m_input2.ind[num];
	}

	ind_copy.SetData(data_copy_ind, m_input2.ind_length * m_input2.ind_width);//ind

	mwArray input(1, 2, mxCELL_CLASS);//
	input.Get(1,1).Set(pop_copy);//pop
	input.Get(1,2).Set(ind_copy);//ind

	mwArray p(1, 1, mxCELL_CLASS);//output

	shGetNeuron(1, p, input);//pの作成

	//p(19*42)の出力
	mwArray p_dims = p.GetDimensions();//pの次元を取る
	int p_dim1 =  p_dims.Get(1, 1);//int型に変換する必要あり
	int p_dim2 =  p_dims.Get(1, 2);
	std::cerr << "shGetN:	p_x = " << p_dim1 << "	p_y = " << p_dim2 << std::endl;//popのインデックス

	m_output2.pop_length = p_dim1;/////////////////////19
	m_output2.pop_width = p_dim2;//42

	m_output2.pop.length(p_dim1 * p_dim2);//popの配列の確保

	num = 0;
	double *data_copy_p = new double [p_dim1 * p_dim2];
	p.GetData(data_copy_p, p_dim1 * p_dim2);

	for (num = 0; num < p_dim1 * p_dim2 ; num++) {
		m_output2.pop[num] = data_copy_p[num];
	}

	m_output2Out.write();
	delete[] data_copy_pop;//data_copyのデリート
	delete[] data_copy_p;
	delete[] data_copy_ind;

	return RTC::RTC_OK;
}

/*
RTC::ReturnCode_t sh_GetN::onAborting(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t sh_GetN::onError(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t sh_GetN::onReset(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t sh_GetN::onStateUpdate(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/

/*
RTC::ReturnCode_t sh_GetN::onRateChanged(RTC::UniqueId ec_id)
{
  return RTC::RTC_OK;
}
*/



extern "C"
{
 
  void sh_GetNInit(RTC::Manager* manager)
  {
    coil::Properties profile(sh_getn_spec);
    manager->registerFactory(profile,
                             RTC::Create<sh_GetN>,
                             RTC::Delete<sh_GetN>);
  }
  
};


