/******************************************************************************
 *    Copyright (C) 2014 Hisilicon STB Development Dept
 *    All rights reserved.
 * ***
 *    Create by Czyong
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *   http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
******************************************************************************/

#ifndef DDR_TRAININGH
#define DDR_TRAININGH

struct regval_t {
	unsigned int reg;
	unsigned int val;
};

struct ddrtr_result_t {
	unsigned int count;
#define DDR_TRAINING_MAX_VALUE       20
	struct regval_t reg[DDR_TRAINING_MAX_VALUE];
	char data[1024];
};

struct ddrtr_param_t {
#define DDRTR_PARAM_TRAINING         1
#define DDRTR_PARAM_PRESSURE         2
#define DDRTR_PARAM_ADDRTRAIN        3
	unsigned int cmd;
	union {
		struct {
			unsigned int start;
			unsigned int length;
		} train;
		struct {
			unsigned int mode;
			unsigned int codetype;
			unsigned int burstnum;
			unsigned int count;
			unsigned int changebit;
		} pressure;
	};
};

typedef struct ddrtr_result_t *(*ddrtr_t)(struct ddrtr_param_t *param);

#endif /* DDR_TRAININGH */