??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
?
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8??
?
'le_net5/feature_extractor/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'le_net5/feature_extractor/conv2d/kernel
?
;le_net5/feature_extractor/conv2d/kernel/Read/ReadVariableOpReadVariableOp'le_net5/feature_extractor/conv2d/kernel*&
_output_shapes
:*
dtype0
?
%le_net5/feature_extractor/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%le_net5/feature_extractor/conv2d/bias
?
9le_net5/feature_extractor/conv2d/bias/Read/ReadVariableOpReadVariableOp%le_net5/feature_extractor/conv2d/bias*
_output_shapes
:*
dtype0
?
)le_net5/feature_extractor/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)le_net5/feature_extractor/conv2d_1/kernel
?
=le_net5/feature_extractor/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp)le_net5/feature_extractor/conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
'le_net5/feature_extractor/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'le_net5/feature_extractor/conv2d_1/bias
?
;le_net5/feature_extractor/conv2d_1/bias/Read/ReadVariableOpReadVariableOp'le_net5/feature_extractor/conv2d_1/bias*
_output_shapes
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?T*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:T*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T
*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:T
*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:
*
dtype0

NoOpNoOp
?(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?(
value?(B?( B?(
?
zero_padding
feature_extractor

classifier
trainable_variables
regularization_losses
	variables
	keras_api

signatures
R
	trainable_variables

regularization_losses
	variables
	keras_api
?
	conv1

conv1_pool
	conv2

conv2_pool
trainable_variables
regularization_losses
	variables
	keras_api
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
trainable_variables
regularization_losses
	variables
	keras_api
F
0
1
2
 3
!4
"5
#6
$7
%8
&9
 
F
0
1
2
 3
!4
"5
#6
$7
%8
&9
?
'non_trainable_variables

(layers
trainable_variables
regularization_losses
)layer_metrics
*layer_regularization_losses
+metrics
	variables
 
 
 
 
?
,non_trainable_variables

-layers
	trainable_variables

regularization_losses
.layer_metrics
/layer_regularization_losses
0metrics
	variables
h

kernel
bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
R
5trainable_variables
6regularization_losses
7	variables
8	keras_api
h

kernel
 bias
9trainable_variables
:regularization_losses
;	variables
<	keras_api
R
=trainable_variables
>regularization_losses
?	variables
@	keras_api

0
1
2
 3
 

0
1
2
 3
?
Anon_trainable_variables

Blayers
trainable_variables
regularization_losses
Clayer_metrics
Dlayer_regularization_losses
Emetrics
	variables
R
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
h

!kernel
"bias
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
h

#kernel
$bias
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
h

%kernel
&bias
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
*
!0
"1
#2
$3
%4
&5
 
*
!0
"1
#2
$3
%4
&5
?
Vnon_trainable_variables

Wlayers
trainable_variables
regularization_losses
Xlayer_metrics
Ylayer_regularization_losses
Zmetrics
	variables
mk
VARIABLE_VALUE'le_net5/feature_extractor/conv2d/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%le_net5/feature_extractor/conv2d/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE)le_net5/feature_extractor/conv2d_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE'le_net5/feature_extractor/conv2d_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUE
dense/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_1/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense_1/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_2/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense_2/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 
 
 
 
 
 
 

0
1
 

0
1
?
[non_trainable_variables

\layers
1trainable_variables
2regularization_losses
]layer_metrics
^layer_regularization_losses
_metrics
3	variables
 
 
 
?
`non_trainable_variables

alayers
5trainable_variables
6regularization_losses
blayer_metrics
clayer_regularization_losses
dmetrics
7	variables

0
 1
 

0
 1
?
enon_trainable_variables

flayers
9trainable_variables
:regularization_losses
glayer_metrics
hlayer_regularization_losses
imetrics
;	variables
 
 
 
?
jnon_trainable_variables

klayers
=trainable_variables
>regularization_losses
llayer_metrics
mlayer_regularization_losses
nmetrics
?	variables
 

0
1
2
3
 
 
 
 
 
 
?
onon_trainable_variables

players
Ftrainable_variables
Gregularization_losses
qlayer_metrics
rlayer_regularization_losses
smetrics
H	variables

!0
"1
 

!0
"1
?
tnon_trainable_variables

ulayers
Jtrainable_variables
Kregularization_losses
vlayer_metrics
wlayer_regularization_losses
xmetrics
L	variables

#0
$1
 

#0
$1
?
ynon_trainable_variables

zlayers
Ntrainable_variables
Oregularization_losses
{layer_metrics
|layer_regularization_losses
}metrics
P	variables

%0
&1
 

%0
&1
?
~non_trainable_variables

layers
Rtrainable_variables
Sregularization_losses
?layer_metrics
 ?layer_regularization_losses
?metrics
T	variables
 

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1'le_net5/feature_extractor/conv2d/kernel%le_net5/feature_extractor/conv2d/bias)le_net5/feature_extractor/conv2d_1/kernel'le_net5/feature_extractor/conv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *+
f&R$
"__inference_signature_wrapper_1450
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename;le_net5/feature_extractor/conv2d/kernel/Read/ReadVariableOp9le_net5/feature_extractor/conv2d/bias/Read/ReadVariableOp=le_net5/feature_extractor/conv2d_1/kernel/Read/ReadVariableOp;le_net5/feature_extractor/conv2d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *&
f!R
__inference__traced_save_1835
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename'le_net5/feature_extractor/conv2d/kernel%le_net5/feature_extractor/conv2d/bias)le_net5/feature_extractor/conv2d_1/kernel'le_net5/feature_extractor/conv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *)
f$R"
 __inference__traced_restore_1875??
?
?
)__inference_sequential_layer_call_fn_1694

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_11692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_le_net5_layer_call_fn_1565
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_le_net5_layer_call_and_return_conditional_losses_13752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:?????????

_user_specified_namex
?	
?
A__inference_dense_1_layer_call_and_return_conditional_losses_1082

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?Q
?	
__inference__wrapped_model_989
input_1C
?le_net5_feature_extractor_conv2d_conv2d_readvariableop_resourceD
@le_net5_feature_extractor_conv2d_biasadd_readvariableop_resourceE
Ale_net5_feature_extractor_conv2d_1_conv2d_readvariableop_resourceF
Ble_net5_feature_extractor_conv2d_1_biasadd_readvariableop_resource;
7le_net5_sequential_dense_matmul_readvariableop_resource<
8le_net5_sequential_dense_biasadd_readvariableop_resource=
9le_net5_sequential_dense_1_matmul_readvariableop_resource>
:le_net5_sequential_dense_1_biasadd_readvariableop_resource=
9le_net5_sequential_dense_2_matmul_readvariableop_resource>
:le_net5_sequential_dense_2_biasadd_readvariableop_resource
identity??7le_net5/feature_extractor/conv2d/BiasAdd/ReadVariableOp?6le_net5/feature_extractor/conv2d/Conv2D/ReadVariableOp?9le_net5/feature_extractor/conv2d_1/BiasAdd/ReadVariableOp?8le_net5/feature_extractor/conv2d_1/Conv2D/ReadVariableOp?/le_net5/sequential/dense/BiasAdd/ReadVariableOp?.le_net5/sequential/dense/MatMul/ReadVariableOp?1le_net5/sequential/dense_1/BiasAdd/ReadVariableOp?0le_net5/sequential/dense_1/MatMul/ReadVariableOp?1le_net5/sequential/dense_2/BiasAdd/ReadVariableOp?0le_net5/sequential/dense_2/MatMul/ReadVariableOp?
#le_net5/zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2%
#le_net5/zero_padding2d/Pad/paddings?
le_net5/zero_padding2d/PadPadinput_1,le_net5/zero_padding2d/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????  2
le_net5/zero_padding2d/Pad?
6le_net5/feature_extractor/conv2d/Conv2D/ReadVariableOpReadVariableOp?le_net5_feature_extractor_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype028
6le_net5/feature_extractor/conv2d/Conv2D/ReadVariableOp?
'le_net5/feature_extractor/conv2d/Conv2DConv2D#le_net5/zero_padding2d/Pad:output:0>le_net5/feature_extractor/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2)
'le_net5/feature_extractor/conv2d/Conv2D?
7le_net5/feature_extractor/conv2d/BiasAdd/ReadVariableOpReadVariableOp@le_net5_feature_extractor_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype029
7le_net5/feature_extractor/conv2d/BiasAdd/ReadVariableOp?
(le_net5/feature_extractor/conv2d/BiasAddBiasAdd0le_net5/feature_extractor/conv2d/Conv2D:output:0?le_net5/feature_extractor/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2*
(le_net5/feature_extractor/conv2d/BiasAdd?
%le_net5/feature_extractor/conv2d/TanhTanh1le_net5/feature_extractor/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2'
%le_net5/feature_extractor/conv2d/Tanh?
3le_net5/feature_extractor/average_pooling2d/AvgPoolAvgPool)le_net5/feature_extractor/conv2d/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
25
3le_net5/feature_extractor/average_pooling2d/AvgPool?
8le_net5/feature_extractor/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAle_net5_feature_extractor_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02:
8le_net5/feature_extractor/conv2d_1/Conv2D/ReadVariableOp?
)le_net5/feature_extractor/conv2d_1/Conv2DConv2D<le_net5/feature_extractor/average_pooling2d/AvgPool:output:0@le_net5/feature_extractor/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2+
)le_net5/feature_extractor/conv2d_1/Conv2D?
9le_net5/feature_extractor/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBle_net5_feature_extractor_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02;
9le_net5/feature_extractor/conv2d_1/BiasAdd/ReadVariableOp?
*le_net5/feature_extractor/conv2d_1/BiasAddBiasAdd2le_net5/feature_extractor/conv2d_1/Conv2D:output:0Ale_net5/feature_extractor/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2,
*le_net5/feature_extractor/conv2d_1/BiasAdd?
'le_net5/feature_extractor/conv2d_1/TanhTanh3le_net5/feature_extractor/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????

2)
'le_net5/feature_extractor/conv2d_1/Tanh?
5le_net5/feature_extractor/average_pooling2d_1/AvgPoolAvgPool+le_net5/feature_extractor/conv2d_1/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
27
5le_net5/feature_extractor/average_pooling2d_1/AvgPool?
 le_net5/sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2"
 le_net5/sequential/flatten/Const?
"le_net5/sequential/flatten/ReshapeReshape>le_net5/feature_extractor/average_pooling2d_1/AvgPool:output:0)le_net5/sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2$
"le_net5/sequential/flatten/Reshape?
.le_net5/sequential/dense/MatMul/ReadVariableOpReadVariableOp7le_net5_sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.le_net5/sequential/dense/MatMul/ReadVariableOp?
le_net5/sequential/dense/MatMulMatMul+le_net5/sequential/flatten/Reshape:output:06le_net5/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
le_net5/sequential/dense/MatMul?
/le_net5/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp8le_net5_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/le_net5/sequential/dense/BiasAdd/ReadVariableOp?
 le_net5/sequential/dense/BiasAddBiasAdd)le_net5/sequential/dense/MatMul:product:07le_net5/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 le_net5/sequential/dense/BiasAdd?
le_net5/sequential/dense/TanhTanh)le_net5/sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
le_net5/sequential/dense/Tanh?
0le_net5/sequential/dense_1/MatMul/ReadVariableOpReadVariableOp9le_net5_sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype022
0le_net5/sequential/dense_1/MatMul/ReadVariableOp?
!le_net5/sequential/dense_1/MatMulMatMul!le_net5/sequential/dense/Tanh:y:08le_net5/sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2#
!le_net5/sequential/dense_1/MatMul?
1le_net5/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp:le_net5_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype023
1le_net5/sequential/dense_1/BiasAdd/ReadVariableOp?
"le_net5/sequential/dense_1/BiasAddBiasAdd+le_net5/sequential/dense_1/MatMul:product:09le_net5/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2$
"le_net5/sequential/dense_1/BiasAdd?
le_net5/sequential/dense_1/TanhTanh+le_net5/sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2!
le_net5/sequential/dense_1/Tanh?
0le_net5/sequential/dense_2/MatMul/ReadVariableOpReadVariableOp9le_net5_sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:T
*
dtype022
0le_net5/sequential/dense_2/MatMul/ReadVariableOp?
!le_net5/sequential/dense_2/MatMulMatMul#le_net5/sequential/dense_1/Tanh:y:08le_net5/sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2#
!le_net5/sequential/dense_2/MatMul?
1le_net5/sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp:le_net5_sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype023
1le_net5/sequential/dense_2/BiasAdd/ReadVariableOp?
"le_net5/sequential/dense_2/BiasAddBiasAdd+le_net5/sequential/dense_2/MatMul:product:09le_net5/sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2$
"le_net5/sequential/dense_2/BiasAdd?
"le_net5/sequential/dense_2/SoftmaxSoftmax+le_net5/sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2$
"le_net5/sequential/dense_2/Softmax?
IdentityIdentity,le_net5/sequential/dense_2/Softmax:softmax:08^le_net5/feature_extractor/conv2d/BiasAdd/ReadVariableOp7^le_net5/feature_extractor/conv2d/Conv2D/ReadVariableOp:^le_net5/feature_extractor/conv2d_1/BiasAdd/ReadVariableOp9^le_net5/feature_extractor/conv2d_1/Conv2D/ReadVariableOp0^le_net5/sequential/dense/BiasAdd/ReadVariableOp/^le_net5/sequential/dense/MatMul/ReadVariableOp2^le_net5/sequential/dense_1/BiasAdd/ReadVariableOp1^le_net5/sequential/dense_1/MatMul/ReadVariableOp2^le_net5/sequential/dense_2/BiasAdd/ReadVariableOp1^le_net5/sequential/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2r
7le_net5/feature_extractor/conv2d/BiasAdd/ReadVariableOp7le_net5/feature_extractor/conv2d/BiasAdd/ReadVariableOp2p
6le_net5/feature_extractor/conv2d/Conv2D/ReadVariableOp6le_net5/feature_extractor/conv2d/Conv2D/ReadVariableOp2v
9le_net5/feature_extractor/conv2d_1/BiasAdd/ReadVariableOp9le_net5/feature_extractor/conv2d_1/BiasAdd/ReadVariableOp2t
8le_net5/feature_extractor/conv2d_1/Conv2D/ReadVariableOp8le_net5/feature_extractor/conv2d_1/Conv2D/ReadVariableOp2b
/le_net5/sequential/dense/BiasAdd/ReadVariableOp/le_net5/sequential/dense/BiasAdd/ReadVariableOp2`
.le_net5/sequential/dense/MatMul/ReadVariableOp.le_net5/sequential/dense/MatMul/ReadVariableOp2f
1le_net5/sequential/dense_1/BiasAdd/ReadVariableOp1le_net5/sequential/dense_1/BiasAdd/ReadVariableOp2d
0le_net5/sequential/dense_1/MatMul/ReadVariableOp0le_net5/sequential/dense_1/MatMul/ReadVariableOp2f
1le_net5/sequential/dense_2/BiasAdd/ReadVariableOp1le_net5/sequential/dense_2/BiasAdd/ReadVariableOp2d
0le_net5/sequential/dense_2/MatMul/ReadVariableOp0le_net5/sequential/dense_2/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
)__inference_sequential_layer_call_fn_1184
flatten_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_11692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:?????????
'
_user_specified_nameflatten_input
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_1109

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????T::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
&__inference_le_net5_layer_call_fn_1590
x
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_le_net5_layer_call_and_return_conditional_losses_13752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:?????????

_user_specified_namex
?	
?
A__inference_dense_1_layer_call_and_return_conditional_losses_1753

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1206

inputs

dense_1190

dense_1192
dense_1_1195
dense_1_1197
dense_2_1200
dense_2_1202
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_10362
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_1190
dense_1192*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_10552
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1195dense_1_1197*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_10822!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1200dense_2_1202*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_11092!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
-__inference_zero_padding2d_layer_call_fn_1002

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *P
fKRI
G__inference_zero_padding2d_layer_call_and_return_conditional_losses_9962
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_feature_extractor_layer_call_and_return_conditional_losses_1610
x)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dx$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/TanhTanhconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Tanh?
average_pooling2d/AvgPoolAvgPoolconv2d/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
average_pooling2d/AvgPool?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2D"average_pooling2d/AvgPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2
conv2d_1/BiasAdd{
conv2d_1/TanhTanhconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????

2
conv2d_1/Tanh?
average_pooling2d_1/AvgPoolAvgPoolconv2d_1/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
average_pooling2d_1/AvgPool?
IdentityIdentity$average_pooling2d_1/AvgPool:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:R N
/
_output_shapes
:?????????  

_user_specified_namex
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1650

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/TanhTanhdense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Tanh?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Tanh:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_1/BiasAddp
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
dense_1/Tanh?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:T
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldense_1/Tanh:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?G
?
A__inference_le_net5_layer_call_and_return_conditional_losses_1495
x;
7feature_extractor_conv2d_conv2d_readvariableop_resource<
8feature_extractor_conv2d_biasadd_readvariableop_resource=
9feature_extractor_conv2d_1_conv2d_readvariableop_resource>
:feature_extractor_conv2d_1_biasadd_readvariableop_resource3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource5
1sequential_dense_2_matmul_readvariableop_resource6
2sequential_dense_2_biasadd_readvariableop_resource
identity??/feature_extractor/conv2d/BiasAdd/ReadVariableOp?.feature_extractor/conv2d/Conv2D/ReadVariableOp?1feature_extractor/conv2d_1/BiasAdd/ReadVariableOp?0feature_extractor/conv2d_1/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?)sequential/dense_2/BiasAdd/ReadVariableOp?(sequential/dense_2/MatMul/ReadVariableOp?
zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
zero_padding2d/Pad/paddings?
zero_padding2d/PadPadx$zero_padding2d/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????  2
zero_padding2d/Pad?
.feature_extractor/conv2d/Conv2D/ReadVariableOpReadVariableOp7feature_extractor_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.feature_extractor/conv2d/Conv2D/ReadVariableOp?
feature_extractor/conv2d/Conv2DConv2Dzero_padding2d/Pad:output:06feature_extractor/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2!
feature_extractor/conv2d/Conv2D?
/feature_extractor/conv2d/BiasAdd/ReadVariableOpReadVariableOp8feature_extractor_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/feature_extractor/conv2d/BiasAdd/ReadVariableOp?
 feature_extractor/conv2d/BiasAddBiasAdd(feature_extractor/conv2d/Conv2D:output:07feature_extractor/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2"
 feature_extractor/conv2d/BiasAdd?
feature_extractor/conv2d/TanhTanh)feature_extractor/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
feature_extractor/conv2d/Tanh?
+feature_extractor/average_pooling2d/AvgPoolAvgPool!feature_extractor/conv2d/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2-
+feature_extractor/average_pooling2d/AvgPool?
0feature_extractor/conv2d_1/Conv2D/ReadVariableOpReadVariableOp9feature_extractor_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype022
0feature_extractor/conv2d_1/Conv2D/ReadVariableOp?
!feature_extractor/conv2d_1/Conv2DConv2D4feature_extractor/average_pooling2d/AvgPool:output:08feature_extractor/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2#
!feature_extractor/conv2d_1/Conv2D?
1feature_extractor/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp:feature_extractor_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1feature_extractor/conv2d_1/BiasAdd/ReadVariableOp?
"feature_extractor/conv2d_1/BiasAddBiasAdd*feature_extractor/conv2d_1/Conv2D:output:09feature_extractor/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2$
"feature_extractor/conv2d_1/BiasAdd?
feature_extractor/conv2d_1/TanhTanh+feature_extractor/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????

2!
feature_extractor/conv2d_1/Tanh?
-feature_extractor/average_pooling2d_1/AvgPoolAvgPool#feature_extractor/conv2d_1/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2/
-feature_extractor/average_pooling2d_1/AvgPool?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape6feature_extractor/average_pooling2d_1/AvgPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/BiasAdd?
sequential/dense/TanhTanh!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/dense/Tanh?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMulsequential/dense/Tanh:y:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
sequential/dense_1/BiasAdd?
sequential/dense_1/TanhTanh#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
sequential/dense_1/Tanh?
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:T
*
dtype02*
(sequential/dense_2/MatMul/ReadVariableOp?
sequential/dense_2/MatMulMatMulsequential/dense_1/Tanh:y:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_2/MatMul?
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02+
)sequential/dense_2/BiasAdd/ReadVariableOp?
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_2/BiasAdd?
sequential/dense_2/SoftmaxSoftmax#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_2/Softmax?
IdentityIdentity$sequential/dense_2/Softmax:softmax:00^feature_extractor/conv2d/BiasAdd/ReadVariableOp/^feature_extractor/conv2d/Conv2D/ReadVariableOp2^feature_extractor/conv2d_1/BiasAdd/ReadVariableOp1^feature_extractor/conv2d_1/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2b
/feature_extractor/conv2d/BiasAdd/ReadVariableOp/feature_extractor/conv2d/BiasAdd/ReadVariableOp2`
.feature_extractor/conv2d/Conv2D/ReadVariableOp.feature_extractor/conv2d/Conv2D/ReadVariableOp2f
1feature_extractor/conv2d_1/BiasAdd/ReadVariableOp1feature_extractor/conv2d_1/BiasAdd/ReadVariableOp2d
0feature_extractor/conv2d_1/Conv2D/ReadVariableOp0feature_extractor/conv2d_1/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp:R N
/
_output_shapes
:?????????

_user_specified_namex
?
i
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_1020

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
AvgPool?
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_1008

inputs
identity?
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
AvgPool?
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
N
2__inference_average_pooling2d_1_layer_call_fn_1026

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *V
fQRO
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_10202
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
{
&__inference_dense_2_layer_call_fn_1782

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_11092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????T::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?	
?
?__inference_dense_layer_call_and_return_conditional_losses_1055

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1126
flatten_input

dense_1066

dense_1068
dense_1_1093
dense_1_1095
dense_2_1120
dense_2_1122
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_10362
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_1066
dense_1068*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_10552
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1093dense_1_1095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_10822!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1120dense_2_1122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_11092!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:^ Z
/
_output_shapes
:?????????
'
_user_specified_nameflatten_input
?
c
G__inference_zero_padding2d_layer_call_and_return_conditional_losses_996

inputs
identity?
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
Pad/paddings?
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2
Pad?
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_1711

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_12062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
?__inference_dense_layer_call_and_return_conditional_losses_1733

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
TanhTanhBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
__inference__traced_save_1835
file_prefixF
Bsavev2_le_net5_feature_extractor_conv2d_kernel_read_readvariableopD
@savev2_le_net5_feature_extractor_conv2d_bias_read_readvariableopH
Dsavev2_le_net5_feature_extractor_conv2d_1_kernel_read_readvariableopF
Bsavev2_le_net5_feature_extractor_conv2d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Bsavev2_le_net5_feature_extractor_conv2d_kernel_read_readvariableop@savev2_le_net5_feature_extractor_conv2d_bias_read_readvariableopDsavev2_le_net5_feature_extractor_conv2d_1_kernel_read_readvariableopBsavev2_le_net5_feature_extractor_conv2d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*{
_input_shapesj
h: :::::
??:?:	?T:T:T
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?T: 

_output_shapes
:T:$	 

_output_shapes

:T
: 


_output_shapes
:
:

_output_shapes
: 
?	
?
&__inference_le_net5_layer_call_fn_1398
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_le_net5_layer_call_and_return_conditional_losses_13752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
B
&__inference_flatten_layer_call_fn_1722

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_10362
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
&__inference_le_net5_layer_call_fn_1423
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_le_net5_layer_call_and_return_conditional_losses_13752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
{
&__inference_dense_1_layer_call_fn_1762

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_10822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????T2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_feature_extractor_layer_call_and_return_conditional_losses_1246
x)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dx$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddu
conv2d/TanhTanhconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d/Tanh?
average_pooling2d/AvgPoolAvgPoolconv2d/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
average_pooling2d/AvgPool?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2D"average_pooling2d/AvgPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2
conv2d_1/BiasAdd{
conv2d_1/TanhTanhconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????

2
conv2d_1/Tanh?
average_pooling2d_1/AvgPoolAvgPoolconv2d_1/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
average_pooling2d_1/AvgPool?
IdentityIdentity$average_pooling2d_1/AvgPool:output:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:R N
/
_output_shapes
:?????????  

_user_specified_namex
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_1036

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_le_net5_layer_call_and_return_conditional_losses_1345
input_1
feature_extractor_1322
feature_extractor_1324
feature_extractor_1326
feature_extractor_1328
sequential_1331
sequential_1333
sequential_1335
sequential_1337
sequential_1339
sequential_1341
identity??)feature_extractor/StatefulPartitionedCall?"sequential/StatefulPartitionedCall?
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *P
fKRI
G__inference_zero_padding2d_layer_call_and_return_conditional_losses_9962 
zero_padding2d/PartitionedCall?
)feature_extractor/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0feature_extractor_1322feature_extractor_1324feature_extractor_1326feature_extractor_1328*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *T
fORM
K__inference_feature_extractor_layer_call_and_return_conditional_losses_12462+
)feature_extractor/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCall2feature_extractor/StatefulPartitionedCall:output:0sequential_1331sequential_1333sequential_1335sequential_1337sequential_1339sequential_1341*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_12062$
"sequential/StatefulPartitionedCall?
IdentityIdentity+sequential/StatefulPartitionedCall:output:0*^feature_extractor/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2V
)feature_extractor/StatefulPartitionedCall)feature_extractor/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
"__inference_signature_wrapper_1450
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *'
f"R 
__inference__wrapped_model_9892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1169

inputs

dense_1153

dense_1155
dense_1_1158
dense_1_1160
dense_2_1163
dense_2_1165
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_10362
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_1153
dense_1155*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_10552
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1158dense_1_1160*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_10822!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1163dense_2_1165*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_11092!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_le_net5_layer_call_and_return_conditional_losses_1375
x
feature_extractor_1352
feature_extractor_1354
feature_extractor_1356
feature_extractor_1358
sequential_1361
sequential_1363
sequential_1365
sequential_1367
sequential_1369
sequential_1371
identity??)feature_extractor/StatefulPartitionedCall?"sequential/StatefulPartitionedCall?
zero_padding2d/PartitionedCallPartitionedCallx*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *P
fKRI
G__inference_zero_padding2d_layer_call_and_return_conditional_losses_9962 
zero_padding2d/PartitionedCall?
)feature_extractor/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0feature_extractor_1352feature_extractor_1354feature_extractor_1356feature_extractor_1358*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *T
fORM
K__inference_feature_extractor_layer_call_and_return_conditional_losses_12462+
)feature_extractor/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCall2feature_extractor/StatefulPartitionedCall:output:0sequential_1361sequential_1363sequential_1365sequential_1367sequential_1369sequential_1371*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_12062$
"sequential/StatefulPartitionedCall?
IdentityIdentity+sequential/StatefulPartitionedCall:output:0*^feature_extractor/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2V
)feature_extractor/StatefulPartitionedCall)feature_extractor/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:R N
/
_output_shapes
:?????????

_user_specified_namex
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_1773

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????T::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_1221
flatten_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_12062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:?????????
'
_user_specified_nameflatten_input
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_1717

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
0__inference_feature_extractor_layer_call_fn_1623
x
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *T
fORM
K__inference_feature_extractor_layer_call_and_return_conditional_losses_12462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????  ::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
/
_output_shapes
:?????????  

_user_specified_namex
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1146
flatten_input

dense_1130

dense_1132
dense_1_1135
dense_1_1137
dense_2_1140
dense_2_1142
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_10362
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_1130
dense_1132*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_10552
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1135dense_1_1137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_10822!
dense_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1140dense_2_1142*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_11092!
dense_2/StatefulPartitionedCall?
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:^ Z
/
_output_shapes
:?????????
'
_user_specified_nameflatten_input
?
?
A__inference_le_net5_layer_call_and_return_conditional_losses_1318
input_1
feature_extractor_1261
feature_extractor_1263
feature_extractor_1265
feature_extractor_1267
sequential_1304
sequential_1306
sequential_1308
sequential_1310
sequential_1312
sequential_1314
identity??)feature_extractor/StatefulPartitionedCall?"sequential/StatefulPartitionedCall?
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *P
fKRI
G__inference_zero_padding2d_layer_call_and_return_conditional_losses_9962 
zero_padding2d/PartitionedCall?
)feature_extractor/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0feature_extractor_1261feature_extractor_1263feature_extractor_1265feature_extractor_1267*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *T
fORM
K__inference_feature_extractor_layer_call_and_return_conditional_losses_12462+
)feature_extractor/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCall2feature_extractor/StatefulPartitionedCall:output:0sequential_1304sequential_1306sequential_1308sequential_1310sequential_1312sequential_1314*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_11692$
"sequential/StatefulPartitionedCall?
IdentityIdentity+sequential/StatefulPartitionedCall:output:0*^feature_extractor/StatefulPartitionedCall#^sequential/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2V
)feature_extractor/StatefulPartitionedCall)feature_extractor/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?.
?
 __inference__traced_restore_1875
file_prefix<
8assignvariableop_le_net5_feature_extractor_conv2d_kernel<
8assignvariableop_1_le_net5_feature_extractor_conv2d_bias@
<assignvariableop_2_le_net5_feature_extractor_conv2d_1_kernel>
:assignvariableop_3_le_net5_feature_extractor_conv2d_1_bias#
assignvariableop_4_dense_kernel!
assignvariableop_5_dense_bias%
!assignvariableop_6_dense_1_kernel#
assignvariableop_7_dense_1_bias%
!assignvariableop_8_dense_2_kernel#
assignvariableop_9_dense_2_bias
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp8assignvariableop_le_net5_feature_extractor_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp8assignvariableop_1_le_net5_feature_extractor_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp<assignvariableop_2_le_net5_feature_extractor_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp:assignvariableop_3_le_net5_feature_extractor_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*=
_input_shapes,
*: ::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?G
?
A__inference_le_net5_layer_call_and_return_conditional_losses_1540
x;
7feature_extractor_conv2d_conv2d_readvariableop_resource<
8feature_extractor_conv2d_biasadd_readvariableop_resource=
9feature_extractor_conv2d_1_conv2d_readvariableop_resource>
:feature_extractor_conv2d_1_biasadd_readvariableop_resource3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource5
1sequential_dense_2_matmul_readvariableop_resource6
2sequential_dense_2_biasadd_readvariableop_resource
identity??/feature_extractor/conv2d/BiasAdd/ReadVariableOp?.feature_extractor/conv2d/Conv2D/ReadVariableOp?1feature_extractor/conv2d_1/BiasAdd/ReadVariableOp?0feature_extractor/conv2d_1/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?)sequential/dense_2/BiasAdd/ReadVariableOp?(sequential/dense_2/MatMul/ReadVariableOp?
zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             2
zero_padding2d/Pad/paddings?
zero_padding2d/PadPadx$zero_padding2d/Pad/paddings:output:0*
T0*/
_output_shapes
:?????????  2
zero_padding2d/Pad?
.feature_extractor/conv2d/Conv2D/ReadVariableOpReadVariableOp7feature_extractor_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.feature_extractor/conv2d/Conv2D/ReadVariableOp?
feature_extractor/conv2d/Conv2DConv2Dzero_padding2d/Pad:output:06feature_extractor/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2!
feature_extractor/conv2d/Conv2D?
/feature_extractor/conv2d/BiasAdd/ReadVariableOpReadVariableOp8feature_extractor_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/feature_extractor/conv2d/BiasAdd/ReadVariableOp?
 feature_extractor/conv2d/BiasAddBiasAdd(feature_extractor/conv2d/Conv2D:output:07feature_extractor/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2"
 feature_extractor/conv2d/BiasAdd?
feature_extractor/conv2d/TanhTanh)feature_extractor/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
feature_extractor/conv2d/Tanh?
+feature_extractor/average_pooling2d/AvgPoolAvgPool!feature_extractor/conv2d/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2-
+feature_extractor/average_pooling2d/AvgPool?
0feature_extractor/conv2d_1/Conv2D/ReadVariableOpReadVariableOp9feature_extractor_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype022
0feature_extractor/conv2d_1/Conv2D/ReadVariableOp?
!feature_extractor/conv2d_1/Conv2DConv2D4feature_extractor/average_pooling2d/AvgPool:output:08feature_extractor/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2#
!feature_extractor/conv2d_1/Conv2D?
1feature_extractor/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp:feature_extractor_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1feature_extractor/conv2d_1/BiasAdd/ReadVariableOp?
"feature_extractor/conv2d_1/BiasAddBiasAdd*feature_extractor/conv2d_1/Conv2D:output:09feature_extractor/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2$
"feature_extractor/conv2d_1/BiasAdd?
feature_extractor/conv2d_1/TanhTanh+feature_extractor/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????

2!
feature_extractor/conv2d_1/Tanh?
-feature_extractor/average_pooling2d_1/AvgPoolAvgPool#feature_extractor/conv2d_1/Tanh:y:0*
T0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2/
-feature_extractor/average_pooling2d_1/AvgPool?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape6feature_extractor/average_pooling2d_1/AvgPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/BiasAdd?
sequential/dense/TanhTanh!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/dense/Tanh?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMulsequential/dense/Tanh:y:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
sequential/dense_1/BiasAdd?
sequential/dense_1/TanhTanh#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
sequential/dense_1/Tanh?
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:T
*
dtype02*
(sequential/dense_2/MatMul/ReadVariableOp?
sequential/dense_2/MatMulMatMulsequential/dense_1/Tanh:y:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_2/MatMul?
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02+
)sequential/dense_2/BiasAdd/ReadVariableOp?
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_2/BiasAdd?
sequential/dense_2/SoftmaxSoftmax#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
sequential/dense_2/Softmax?
IdentityIdentity$sequential/dense_2/Softmax:softmax:00^feature_extractor/conv2d/BiasAdd/ReadVariableOp/^feature_extractor/conv2d/Conv2D/ReadVariableOp2^feature_extractor/conv2d_1/BiasAdd/ReadVariableOp1^feature_extractor/conv2d_1/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*V
_input_shapesE
C:?????????::::::::::2b
/feature_extractor/conv2d/BiasAdd/ReadVariableOp/feature_extractor/conv2d/BiasAdd/ReadVariableOp2`
.feature_extractor/conv2d/Conv2D/ReadVariableOp.feature_extractor/conv2d/Conv2D/ReadVariableOp2f
1feature_extractor/conv2d_1/BiasAdd/ReadVariableOp1feature_extractor/conv2d_1/BiasAdd/ReadVariableOp2d
0feature_extractor/conv2d_1/Conv2D/ReadVariableOp0feature_extractor/conv2d_1/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp:R N
/
_output_shapes
:?????????

_user_specified_namex
?
L
0__inference_average_pooling2d_layer_call_fn_1014

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *T
fORM
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_10082
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1677

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/TanhTanhdense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Tanh?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Tanh:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
dense_1/BiasAddp
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
dense_1/Tanh?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:T
*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldense_1/Tanh:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_2/Softmax?
IdentityIdentitydense_2/Softmax:softmax:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:?????????::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
y
$__inference_dense_layer_call_fn_1742

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*J
config_proto:8

CPU

GPU

XLA_CPU

XLA_GPU2*0J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_10552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????<
output_10
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?
zero_padding
feature_extractor

classifier
trainable_variables
regularization_losses
	variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?
_tf_keras_model?{"class_name": "LeNet5", "name": "le_net5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "LeNet5"}}
?
	trainable_variables

regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "ZeroPadding2D", "name": "zero_padding2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "zero_padding2d", "trainable": true, "dtype": "float32", "padding": {"class_name": "__tuple__", "items": [{"class_name": "__tuple__", "items": [2, 2]}, {"class_name": "__tuple__", "items": [2, 2]}]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
	conv1

conv1_pool
	conv2

conv2_pool
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "FeatureExtractor", "name": "feature_extractor", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
? 
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 5, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_input"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 140, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 84, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 5, 16]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5, 5, 16]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_input"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 140, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 84, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
f
0
1
2
 3
!4
"5
#6
$7
%8
&9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
 3
!4
"5
#6
$7
%8
&9"
trackable_list_wrapper
?
'non_trainable_variables

(layers
trainable_variables
regularization_losses
)layer_metrics
*layer_regularization_losses
+metrics
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
,non_trainable_variables

-layers
	trainable_variables

regularization_losses
.layer_metrics
/layer_regularization_losses
0metrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

kernel
bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 6, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 1]}}
?
5trainable_variables
6regularization_losses
7	variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "AveragePooling2D", "name": "average_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

kernel
 bias
9trainable_variables
:regularization_losses
;	variables
<	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 6}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 6]}}
?
=trainable_variables
>regularization_losses
?	variables
@	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "AveragePooling2D", "name": "average_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
<
0
1
2
 3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
 3"
trackable_list_wrapper
?
Anon_trainable_variables

Blayers
trainable_variables
regularization_losses
Clayer_metrics
Dlayer_regularization_losses
Emetrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

!kernel
"bias
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 140, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 400}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 400]}}
?

#kernel
$bias
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 84, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 140}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 140]}}
?

%kernel
&bias
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 84}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 84]}}
J
!0
"1
#2
$3
%4
&5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
!0
"1
#2
$3
%4
&5"
trackable_list_wrapper
?
Vnon_trainable_variables

Wlayers
trainable_variables
regularization_losses
Xlayer_metrics
Ylayer_regularization_losses
Zmetrics
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
A:?2'le_net5/feature_extractor/conv2d/kernel
3:12%le_net5/feature_extractor/conv2d/bias
C:A2)le_net5/feature_extractor/conv2d_1/kernel
5:32'le_net5/feature_extractor/conv2d_1/bias
 :
??2dense/kernel
:?2
dense/bias
!:	?T2dense_1/kernel
:T2dense_1/bias
 :T
2dense_2/kernel
:
2dense_2/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
[non_trainable_variables

\layers
1trainable_variables
2regularization_losses
]layer_metrics
^layer_regularization_losses
_metrics
3	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
`non_trainable_variables

alayers
5trainable_variables
6regularization_losses
blayer_metrics
clayer_regularization_losses
dmetrics
7	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
enon_trainable_variables

flayers
9trainable_variables
:regularization_losses
glayer_metrics
hlayer_regularization_losses
imetrics
;	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
jnon_trainable_variables

klayers
=trainable_variables
>regularization_losses
llayer_metrics
mlayer_regularization_losses
nmetrics
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
Ftrainable_variables
Gregularization_losses
qlayer_metrics
rlayer_regularization_losses
smetrics
H	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
tnon_trainable_variables

ulayers
Jtrainable_variables
Kregularization_losses
vlayer_metrics
wlayer_regularization_losses
xmetrics
L	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
?
ynon_trainable_variables

zlayers
Ntrainable_variables
Oregularization_losses
{layer_metrics
|layer_regularization_losses
}metrics
P	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
~non_trainable_variables

layers
Rtrainable_variables
Sregularization_losses
?layer_metrics
 ?layer_regularization_losses
?metrics
T	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
A__inference_le_net5_layer_call_and_return_conditional_losses_1495
A__inference_le_net5_layer_call_and_return_conditional_losses_1318
A__inference_le_net5_layer_call_and_return_conditional_losses_1345
A__inference_le_net5_layer_call_and_return_conditional_losses_1540?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__wrapped_model_989?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????
?2?
&__inference_le_net5_layer_call_fn_1590
&__inference_le_net5_layer_call_fn_1423
&__inference_le_net5_layer_call_fn_1398
&__inference_le_net5_layer_call_fn_1565?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_zero_padding2d_layer_call_and_return_conditional_losses_996?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
-__inference_zero_padding2d_layer_call_fn_1002?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
K__inference_feature_extractor_layer_call_and_return_conditional_losses_1610?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_feature_extractor_layer_call_fn_1623?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_1650
D__inference_sequential_layer_call_and_return_conditional_losses_1146
D__inference_sequential_layer_call_and_return_conditional_losses_1677
D__inference_sequential_layer_call_and_return_conditional_losses_1126?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_sequential_layer_call_fn_1221
)__inference_sequential_layer_call_fn_1711
)__inference_sequential_layer_call_fn_1184
)__inference_sequential_layer_call_fn_1694?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference_signature_wrapper_1450input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_1008?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
0__inference_average_pooling2d_layer_call_fn_1014?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_1020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
2__inference_average_pooling2d_1_layer_call_fn_1026?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
A__inference_flatten_layer_call_and_return_conditional_losses_1717?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_flatten_layer_call_fn_1722?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_dense_layer_call_and_return_conditional_losses_1733?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_dense_layer_call_fn_1742?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_1_layer_call_and_return_conditional_losses_1753?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_1_layer_call_fn_1762?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_2_layer_call_and_return_conditional_losses_1773?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_2_layer_call_fn_1782?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
__inference__wrapped_model_989{
 !"#$%&8?5
.?+
)?&
input_1?????????
? "3?0
.
output_1"?
output_1?????????
?
M__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_1020?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_average_pooling2d_1_layer_call_fn_1026?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_average_pooling2d_layer_call_and_return_conditional_losses_1008?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_average_pooling2d_layer_call_fn_1014?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
A__inference_dense_1_layer_call_and_return_conditional_losses_1753]#$0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????T
? z
&__inference_dense_1_layer_call_fn_1762P#$0?-
&?#
!?
inputs??????????
? "??????????T?
A__inference_dense_2_layer_call_and_return_conditional_losses_1773\%&/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????

? y
&__inference_dense_2_layer_call_fn_1782O%&/?,
%?"
 ?
inputs?????????T
? "??????????
?
?__inference_dense_layer_call_and_return_conditional_losses_1733^!"0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? y
$__inference_dense_layer_call_fn_1742Q!"0?-
&?#
!?
inputs??????????
? "????????????
K__inference_feature_extractor_layer_call_and_return_conditional_losses_1610i 2?/
(?%
#? 
x?????????  
? "-?*
#? 
0?????????
? ?
0__inference_feature_extractor_layer_call_fn_1623\ 2?/
(?%
#? 
x?????????  
? " ???????????
A__inference_flatten_layer_call_and_return_conditional_losses_1717a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ~
&__inference_flatten_layer_call_fn_1722T7?4
-?*
(?%
inputs?????????
? "????????????
A__inference_le_net5_layer_call_and_return_conditional_losses_1318q
 !"#$%&<?9
2?/
)?&
input_1?????????
p
? "%?"
?
0?????????

? ?
A__inference_le_net5_layer_call_and_return_conditional_losses_1345q
 !"#$%&<?9
2?/
)?&
input_1?????????
p 
? "%?"
?
0?????????

? ?
A__inference_le_net5_layer_call_and_return_conditional_losses_1495k
 !"#$%&6?3
,?)
#? 
x?????????
p
? "%?"
?
0?????????

? ?
A__inference_le_net5_layer_call_and_return_conditional_losses_1540k
 !"#$%&6?3
,?)
#? 
x?????????
p 
? "%?"
?
0?????????

? ?
&__inference_le_net5_layer_call_fn_1398d
 !"#$%&<?9
2?/
)?&
input_1?????????
p
? "??????????
?
&__inference_le_net5_layer_call_fn_1423d
 !"#$%&<?9
2?/
)?&
input_1?????????
p 
? "??????????
?
&__inference_le_net5_layer_call_fn_1565^
 !"#$%&6?3
,?)
#? 
x?????????
p
? "??????????
?
&__inference_le_net5_layer_call_fn_1590^
 !"#$%&6?3
,?)
#? 
x?????????
p 
? "??????????
?
D__inference_sequential_layer_call_and_return_conditional_losses_1126w!"#$%&F?C
<?9
/?,
flatten_input?????????
p

 
? "%?"
?
0?????????

? ?
D__inference_sequential_layer_call_and_return_conditional_losses_1146w!"#$%&F?C
<?9
/?,
flatten_input?????????
p 

 
? "%?"
?
0?????????

? ?
D__inference_sequential_layer_call_and_return_conditional_losses_1650p!"#$%&??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
D__inference_sequential_layer_call_and_return_conditional_losses_1677p!"#$%&??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
)__inference_sequential_layer_call_fn_1184j!"#$%&F?C
<?9
/?,
flatten_input?????????
p

 
? "??????????
?
)__inference_sequential_layer_call_fn_1221j!"#$%&F?C
<?9
/?,
flatten_input?????????
p 

 
? "??????????
?
)__inference_sequential_layer_call_fn_1694c!"#$%&??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
)__inference_sequential_layer_call_fn_1711c!"#$%&??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
"__inference_signature_wrapper_1450?
 !"#$%&C?@
? 
9?6
4
input_1)?&
input_1?????????"3?0
.
output_1"?
output_1?????????
?
G__inference_zero_padding2d_layer_call_and_return_conditional_losses_996?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
-__inference_zero_padding2d_layer_call_fn_1002?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????