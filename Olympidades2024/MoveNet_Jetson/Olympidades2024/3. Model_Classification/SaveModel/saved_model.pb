��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
A
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu6
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02unknown8�
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	"�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	"�*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	"�*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	"�*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_1/kernel/m
�
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	�@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	"�*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	"�*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_1/kernel/v
�
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	�@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
L
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
L
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *   ?

NoOpNoOp
�9
Const_8Const"/device:CPU:0*
_output_shapes
: *
dtype0*�8
value�8B�8 B�8
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer-29
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer-40
*layer_with_weights-0
*layer-41
+layer-42
,layer_with_weights-1
,layer-43
-layer-44
.layer_with_weights-2
.layer-45
/	optimizer
0regularization_losses
1	variables
2trainable_variables
3	keras_api
4
signatures
 

5	keras_api

6	keras_api

7	keras_api

8	keras_api

9	keras_api

:	keras_api

;	keras_api

<	keras_api

=	keras_api

>	keras_api

?	keras_api

@	keras_api

A	keras_api

B	keras_api

C	keras_api

D	keras_api

E	keras_api

F	keras_api

G	keras_api

H	keras_api

I	keras_api

J	keras_api

K	keras_api

L	keras_api

M	keras_api

N	keras_api

O	keras_api

P	keras_api

Q	keras_api

R	keras_api

S	keras_api

T	keras_api

U	keras_api

V	keras_api

W	keras_api

X	keras_api

Y	keras_api

Z	keras_api

[	keras_api
R
\regularization_losses
]	variables
^trainable_variables
_	keras_api
h

`kernel
abias
bregularization_losses
c	variables
dtrainable_variables
e	keras_api
R
fregularization_losses
g	variables
htrainable_variables
i	keras_api
h

jkernel
kbias
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
R
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
h

tkernel
ubias
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
�
ziter

{beta_1

|beta_2
	}decay
~learning_rate`m�am�jm�km�tm�um�`v�av�jv�kv�tv�uv�
 
*
`0
a1
j2
k3
t4
u5
*
`0
a1
j2
k3
t4
u5
�
0regularization_losses
non_trainable_variables
�metrics
1	variables
 �layer_regularization_losses
�layers
2trainable_variables
�layer_metrics
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
�
\regularization_losses
�non_trainable_variables
�metrics
]	variables
 �layer_regularization_losses
�layers
^trainable_variables
�layer_metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

`0
a1

`0
a1
�
bregularization_losses
�non_trainable_variables
�metrics
c	variables
 �layer_regularization_losses
�layers
dtrainable_variables
�layer_metrics
 
 
 
�
fregularization_losses
�non_trainable_variables
�metrics
g	variables
 �layer_regularization_losses
�layers
htrainable_variables
�layer_metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

j0
k1

j0
k1
�
lregularization_losses
�non_trainable_variables
�metrics
m	variables
 �layer_regularization_losses
�layers
ntrainable_variables
�layer_metrics
 
 
 
�
pregularization_losses
�non_trainable_variables
�metrics
q	variables
 �layer_regularization_losses
�layers
rtrainable_variables
�layer_metrics
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

t0
u1

t0
u1
�
vregularization_losses
�non_trainable_variables
�metrics
w	variables
 �layer_regularization_losses
�layers
xtrainable_variables
�layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1
 
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
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
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1ConstConst_1Const_2Const_3Const_4Const_5Const_6Const_7dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference_signature_wrapper_8809
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst_8*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *&
f!R
__inference__traced_save_9376
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_restore_9467��

�
]
A__inference_flatten_layer_call_and_return_conditional_losses_8134

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����"   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������"X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������""
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_9232

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�w
�
?__inference_model_layer_call_and_return_conditional_losses_8202

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6

dense_8148:	"�

dense_8150:	�
dense_1_8172:	�@
dense_1_8174:@
dense_2_8196:@
dense_2_8198:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskh
&tf.compat.v1.gather_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_1/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0/tf.compat.v1.gather_1/GatherV2/indices:output:0,tf.compat.v1.gather_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������f
$tf.compat.v1.gather/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :c
!tf.compat.v1.gather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0-tf.compat.v1.gather/GatherV2/indices:output:0*tf.compat.v1.gather/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������}
tf.math.multiply/MulMulunknown%tf.compat.v1.gather/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_1/MulMul	unknown_0'tf.compat.v1.gather_1/GatherV2:output:0*
T0*'
_output_shapes
:���������p
tf.compat.v1.size/SizeSize/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
: �
tf.__operators__.add/AddV2AddV2tf.math.multiply/Mul:z:0tf.math.multiply_1/Mul:z:0*
T0*'
_output_shapes
:���������_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims/ExpandDims
ExpandDimstf.__operators__.add/AddV2:z:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������c
!tf.compat.v1.floor_div/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
tf.compat.v1.floor_div/FloorDivFloorDivtf.compat.v1.size/Size:output:0*tf.compat.v1.floor_div/FloorDiv/y:output:0*
T0*
_output_shapes
: e
#tf.broadcast_to/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#tf.broadcast_to/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
!tf.broadcast_to/BroadcastTo/shapePack#tf.compat.v1.floor_div/FloorDiv:z:0,tf.broadcast_to/BroadcastTo/shape/1:output:0,tf.broadcast_to/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to/BroadcastToBroadcastTo"tf.expand_dims/ExpandDims:output:0*tf.broadcast_to/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.subtract/SubSub/tf.__operators__.getitem/strided_slice:output:0$tf.broadcast_to/BroadcastTo:output:0*
T0*+
_output_shapes
:���������h
&tf.compat.v1.gather_7/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_7/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_7/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_7/GatherV2/indices:output:0,tf.compat.v1.gather_7/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_6/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_6/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_6/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_6/GatherV2/indices:output:0,tf.compat.v1.gather_6/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:����������
tf.math.multiply_6/MulMul	unknown_1'tf.compat.v1.gather_6/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_7/MulMul	unknown_2'tf.compat.v1.gather_7/GatherV2:output:0*
T0*'
_output_shapes
:���������[
tf.compat.v1.size_1/SizeSizetf.math.subtract/Sub:z:0*
T0*
_output_shapes
: �
tf.__operators__.add_3/AddV2AddV2tf.math.multiply_6/Mul:z:0tf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������a
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims_1/ExpandDims
ExpandDims tf.__operators__.add_3/AddV2:z:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������e
#tf.compat.v1.floor_div_1/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
!tf.compat.v1.floor_div_1/FloorDivFloorDiv!tf.compat.v1.size_1/Size:output:0,tf.compat.v1.floor_div_1/FloorDiv/y:output:0*
T0*
_output_shapes
: h
&tf.compat.v1.gather_3/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_3/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_3/GatherV2/indices:output:0,tf.compat.v1.gather_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_2/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_2/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_2/GatherV2/indices:output:0,tf.compat.v1.gather_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_5/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_5/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_5/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_5/GatherV2/indices:output:0,tf.compat.v1.gather_5/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_4/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_4/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_4/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_4/GatherV2/indices:output:0,tf.compat.v1.gather_4/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������g
%tf.broadcast_to_1/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :g
%tf.broadcast_to_1/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
#tf.broadcast_to_1/BroadcastTo/shapePack%tf.compat.v1.floor_div_1/FloorDiv:z:0.tf.broadcast_to_1/BroadcastTo/shape/1:output:0.tf.broadcast_to_1/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to_1/BroadcastToBroadcastTo$tf.expand_dims_1/ExpandDims:output:0,tf.broadcast_to_1/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.multiply_2/MulMul	unknown_3'tf.compat.v1.gather_2/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_3/MulMul	unknown_4'tf.compat.v1.gather_3/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_4/MulMul	unknown_5'tf.compat.v1.gather_4/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_5/MulMul	unknown_6'tf.compat.v1.gather_5/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.subtract_2/SubSubtf.math.subtract/Sub:z:0&tf.broadcast_to_1/BroadcastTo:output:0*
T0*+
_output_shapes
:����������
tf.__operators__.add_2/AddV2AddV2tf.math.multiply_4/Mul:z:0tf.math.multiply_5/Mul:z:0*
T0*'
_output_shapes
:����������
tf.__operators__.add_1/AddV2AddV2tf.math.multiply_2/Mul:z:0tf.math.multiply_3/Mul:z:0*
T0*'
_output_shapes
:���������h
&tf.compat.v1.gather_8/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : e
#tf.compat.v1.gather_8/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
tf.compat.v1.gather_8/GatherV2GatherV2tf.math.subtract_2/Sub:z:0/tf.compat.v1.gather_8/GatherV2/indices:output:0,tf.compat.v1.gather_8/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes

:�
tf.math.subtract_1/SubSub tf.__operators__.add_2/AddV2:z:0 tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:����������
tf.compat.v1.norm_1/norm/mulMul'tf.compat.v1.gather_8/GatherV2:output:0'tf.compat.v1.gather_8/GatherV2:output:0*
T0*
_output_shapes

:x
.tf.compat.v1.norm_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
tf.compat.v1.norm_1/norm/SumSum tf.compat.v1.norm_1/norm/mul:z:07tf.compat.v1.norm_1/norm/Sum/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(u
tf.compat.v1.norm_1/norm/SqrtSqrt%tf.compat.v1.norm_1/norm/Sum:output:0*
T0*
_output_shapes

:�
 tf.compat.v1.norm_1/norm/SqueezeSqueeze!tf.compat.v1.norm_1/norm/Sqrt:y:0*
T0*
_output_shapes
:*
squeeze_dims
 �
tf.compat.v1.norm/norm/mulMultf.math.subtract_1/Sub:z:0tf.math.subtract_1/Sub:z:0*
T0*'
_output_shapes
:���������m
tf.compat.v1.norm/norm/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
tf.compat.v1.norm/norm/SumSumtf.compat.v1.norm/norm/mul:z:0%tf.compat.v1.norm/norm/Const:output:0*
T0*
_output_shapes

:*
	keep_dims(q
tf.compat.v1.norm/norm/SqrtSqrt#tf.compat.v1.norm/norm/Sum:output:0*
T0*
_output_shapes

:k
tf.compat.v1.norm/norm/SqueezeSqueezetf.compat.v1.norm/norm/Sqrt:y:0*
T0*
_output_shapes
: ]
tf.math.multiply_8/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
tf.math.multiply_8/MulMul'tf.compat.v1.norm/norm/Squeeze:output:0!tf.math.multiply_8/Mul/y:output:0*
T0*
_output_shapes
: b
tf.math.reduce_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
tf.math.reduce_max/MaxMax)tf.compat.v1.norm_1/norm/Squeeze:output:0!tf.math.reduce_max/Const:output:0*
T0*
_output_shapes
: �
tf.math.maximum/MaximumMaximumtf.math.multiply_8/Mul:z:0tf.math.reduce_max/Max:output:0*
T0*
_output_shapes
: �
tf.math.truediv/truedivRealDivtf.math.subtract/Sub:z:0tf.math.maximum/Maximum:z:0*
T0*+
_output_shapes
:����������
flatten/PartitionedCallPartitionedCalltf.math.truediv/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������"* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8134�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_8148
dense_8150*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8147�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8158�
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_8172dense_1_8174*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_8171�
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_8182�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_8196dense_2_8198*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8195w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
"__inference_signature_wrapper_8809
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7:	"�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__wrapped_model_8025o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�}
�
?__inference_model_layer_call_and_return_conditional_losses_9000

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_67
$dense_matmul_readvariableop_resource:	"�4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskh
&tf.compat.v1.gather_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_1/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0/tf.compat.v1.gather_1/GatherV2/indices:output:0,tf.compat.v1.gather_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������f
$tf.compat.v1.gather/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :c
!tf.compat.v1.gather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0-tf.compat.v1.gather/GatherV2/indices:output:0*tf.compat.v1.gather/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������}
tf.math.multiply/MulMulunknown%tf.compat.v1.gather/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_1/MulMul	unknown_0'tf.compat.v1.gather_1/GatherV2:output:0*
T0*'
_output_shapes
:���������p
tf.compat.v1.size/SizeSize/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
: �
tf.__operators__.add/AddV2AddV2tf.math.multiply/Mul:z:0tf.math.multiply_1/Mul:z:0*
T0*'
_output_shapes
:���������_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims/ExpandDims
ExpandDimstf.__operators__.add/AddV2:z:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������c
!tf.compat.v1.floor_div/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
tf.compat.v1.floor_div/FloorDivFloorDivtf.compat.v1.size/Size:output:0*tf.compat.v1.floor_div/FloorDiv/y:output:0*
T0*
_output_shapes
: e
#tf.broadcast_to/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#tf.broadcast_to/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
!tf.broadcast_to/BroadcastTo/shapePack#tf.compat.v1.floor_div/FloorDiv:z:0,tf.broadcast_to/BroadcastTo/shape/1:output:0,tf.broadcast_to/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to/BroadcastToBroadcastTo"tf.expand_dims/ExpandDims:output:0*tf.broadcast_to/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.subtract/SubSub/tf.__operators__.getitem/strided_slice:output:0$tf.broadcast_to/BroadcastTo:output:0*
T0*+
_output_shapes
:���������h
&tf.compat.v1.gather_7/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_7/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_7/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_7/GatherV2/indices:output:0,tf.compat.v1.gather_7/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_6/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_6/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_6/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_6/GatherV2/indices:output:0,tf.compat.v1.gather_6/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:����������
tf.math.multiply_6/MulMul	unknown_1'tf.compat.v1.gather_6/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_7/MulMul	unknown_2'tf.compat.v1.gather_7/GatherV2:output:0*
T0*'
_output_shapes
:���������[
tf.compat.v1.size_1/SizeSizetf.math.subtract/Sub:z:0*
T0*
_output_shapes
: �
tf.__operators__.add_3/AddV2AddV2tf.math.multiply_6/Mul:z:0tf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������a
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims_1/ExpandDims
ExpandDims tf.__operators__.add_3/AddV2:z:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������e
#tf.compat.v1.floor_div_1/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
!tf.compat.v1.floor_div_1/FloorDivFloorDiv!tf.compat.v1.size_1/Size:output:0,tf.compat.v1.floor_div_1/FloorDiv/y:output:0*
T0*
_output_shapes
: h
&tf.compat.v1.gather_3/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_3/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_3/GatherV2/indices:output:0,tf.compat.v1.gather_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_2/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_2/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_2/GatherV2/indices:output:0,tf.compat.v1.gather_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_5/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_5/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_5/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_5/GatherV2/indices:output:0,tf.compat.v1.gather_5/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_4/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_4/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_4/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_4/GatherV2/indices:output:0,tf.compat.v1.gather_4/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������g
%tf.broadcast_to_1/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :g
%tf.broadcast_to_1/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
#tf.broadcast_to_1/BroadcastTo/shapePack%tf.compat.v1.floor_div_1/FloorDiv:z:0.tf.broadcast_to_1/BroadcastTo/shape/1:output:0.tf.broadcast_to_1/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to_1/BroadcastToBroadcastTo$tf.expand_dims_1/ExpandDims:output:0,tf.broadcast_to_1/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.multiply_2/MulMul	unknown_3'tf.compat.v1.gather_2/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_3/MulMul	unknown_4'tf.compat.v1.gather_3/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_4/MulMul	unknown_5'tf.compat.v1.gather_4/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_5/MulMul	unknown_6'tf.compat.v1.gather_5/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.subtract_2/SubSubtf.math.subtract/Sub:z:0&tf.broadcast_to_1/BroadcastTo:output:0*
T0*+
_output_shapes
:����������
tf.__operators__.add_2/AddV2AddV2tf.math.multiply_4/Mul:z:0tf.math.multiply_5/Mul:z:0*
T0*'
_output_shapes
:����������
tf.__operators__.add_1/AddV2AddV2tf.math.multiply_2/Mul:z:0tf.math.multiply_3/Mul:z:0*
T0*'
_output_shapes
:���������h
&tf.compat.v1.gather_8/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : e
#tf.compat.v1.gather_8/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
tf.compat.v1.gather_8/GatherV2GatherV2tf.math.subtract_2/Sub:z:0/tf.compat.v1.gather_8/GatherV2/indices:output:0,tf.compat.v1.gather_8/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes

:�
tf.math.subtract_1/SubSub tf.__operators__.add_2/AddV2:z:0 tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:����������
tf.compat.v1.norm_1/norm/mulMul'tf.compat.v1.gather_8/GatherV2:output:0'tf.compat.v1.gather_8/GatherV2:output:0*
T0*
_output_shapes

:x
.tf.compat.v1.norm_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
tf.compat.v1.norm_1/norm/SumSum tf.compat.v1.norm_1/norm/mul:z:07tf.compat.v1.norm_1/norm/Sum/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(u
tf.compat.v1.norm_1/norm/SqrtSqrt%tf.compat.v1.norm_1/norm/Sum:output:0*
T0*
_output_shapes

:�
 tf.compat.v1.norm_1/norm/SqueezeSqueeze!tf.compat.v1.norm_1/norm/Sqrt:y:0*
T0*
_output_shapes
:*
squeeze_dims
 �
tf.compat.v1.norm/norm/mulMultf.math.subtract_1/Sub:z:0tf.math.subtract_1/Sub:z:0*
T0*'
_output_shapes
:���������m
tf.compat.v1.norm/norm/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
tf.compat.v1.norm/norm/SumSumtf.compat.v1.norm/norm/mul:z:0%tf.compat.v1.norm/norm/Const:output:0*
T0*
_output_shapes

:*
	keep_dims(q
tf.compat.v1.norm/norm/SqrtSqrt#tf.compat.v1.norm/norm/Sum:output:0*
T0*
_output_shapes

:k
tf.compat.v1.norm/norm/SqueezeSqueezetf.compat.v1.norm/norm/Sqrt:y:0*
T0*
_output_shapes
: ]
tf.math.multiply_8/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
tf.math.multiply_8/MulMul'tf.compat.v1.norm/norm/Squeeze:output:0!tf.math.multiply_8/Mul/y:output:0*
T0*
_output_shapes
: b
tf.math.reduce_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
tf.math.reduce_max/MaxMax)tf.compat.v1.norm_1/norm/Squeeze:output:0!tf.math.reduce_max/Const:output:0*
T0*
_output_shapes
: �
tf.math.maximum/MaximumMaximumtf.math.multiply_8/Mul:z:0tf.math.reduce_max/Max:output:0*
T0*
_output_shapes
: �
tf.math.truediv/truedivRealDivtf.math.subtract/Sub:z:0tf.math.maximum/Maximum:z:0*
T0*+
_output_shapes
:���������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����"   �
flatten/ReshapeReshapetf.math.truediv/truediv:z:0flatten/Const:output:0*
T0*'
_output_shapes
:���������"�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	"�*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
dense/Relu6Relu6dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������j
dropout/IdentityIdentitydense/Relu6:activations:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_1/Relu6Relu6dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@m
dropout_1/IdentityIdentitydense_1/Relu6:activations:0*
T0*'
_output_shapes
:���������@�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_9244

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
B
&__inference_flatten_layer_call_fn_9144

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������"* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8134`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������""
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_dense_2_layer_call_fn_9253

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8195o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
$__inference_dense_layer_call_fn_9159

inputs
unknown:	"�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8147p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������": : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������"
 
_user_specified_nameinputs
�
_
A__inference_dropout_layer_call_and_return_conditional_losses_8158

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference_model_layer_call_fn_8842

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7:	"�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_8202o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_9150

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����"   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:���������"X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:���������""
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_model_layer_call_fn_8233
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7:	"�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_8202o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�;
�

__inference__traced_save_9376
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const_8

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const_8"/device:CPU:0*
_output_shapes
 **
dtypes 
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	"�:�:	�@:@:@:: : : : : : : : : :	"�:�:	�@:@:@::	"�:�:	�@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	"�:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	"�:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	"�:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
Ј
�
__inference__wrapped_model_8025
input_1

model_7913

model_7916

model_7936

model_7939

model_7964

model_7967

model_7970

model_7973=
*model_dense_matmul_readvariableop_resource:	"�:
+model_dense_biasadd_readvariableop_resource:	�?
,model_dense_1_matmul_readvariableop_resource:	�@;
-model_dense_1_biasadd_readvariableop_resource:@>
,model_dense_2_matmul_readvariableop_resource:@;
-model_dense_2_biasadd_readvariableop_resource:
identity��"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�$model/dense_1/BiasAdd/ReadVariableOp�#model/dense_1/MatMul/ReadVariableOp�$model/dense_2/BiasAdd/ReadVariableOp�#model/dense_2/MatMul/ReadVariableOp�
2model/tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
4model/tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
4model/tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
,model/tf.__operators__.getitem/strided_sliceStridedSliceinput_1;model/tf.__operators__.getitem/strided_slice/stack:output:0=model/tf.__operators__.getitem/strided_slice/stack_1:output:0=model/tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskn
,model/tf.compat.v1.gather_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :k
)model/tf.compat.v1.gather_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
$model/tf.compat.v1.gather_1/GatherV2GatherV25model/tf.__operators__.getitem/strided_slice:output:05model/tf.compat.v1.gather_1/GatherV2/indices:output:02model/tf.compat.v1.gather_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������l
*model/tf.compat.v1.gather/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :i
'model/tf.compat.v1.gather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
"model/tf.compat.v1.gather/GatherV2GatherV25model/tf.__operators__.getitem/strided_slice:output:03model/tf.compat.v1.gather/GatherV2/indices:output:00model/tf.compat.v1.gather/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:����������
model/tf.math.multiply/MulMul
model_7913+model/tf.compat.v1.gather/GatherV2:output:0*
T0*'
_output_shapes
:����������
model/tf.math.multiply_1/MulMul
model_7916-model/tf.compat.v1.gather_1/GatherV2:output:0*
T0*'
_output_shapes
:���������|
model/tf.compat.v1.size/SizeSize5model/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
: �
 model/tf.__operators__.add/AddV2AddV2model/tf.math.multiply/Mul:z:0 model/tf.math.multiply_1/Mul:z:0*
T0*'
_output_shapes
:���������e
#model/tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
model/tf.expand_dims/ExpandDims
ExpandDims$model/tf.__operators__.add/AddV2:z:0,model/tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������i
'model/tf.compat.v1.floor_div/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
%model/tf.compat.v1.floor_div/FloorDivFloorDiv%model/tf.compat.v1.size/Size:output:00model/tf.compat.v1.floor_div/FloorDiv/y:output:0*
T0*
_output_shapes
: k
)model/tf.broadcast_to/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :k
)model/tf.broadcast_to/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
'model/tf.broadcast_to/BroadcastTo/shapePack)model/tf.compat.v1.floor_div/FloorDiv:z:02model/tf.broadcast_to/BroadcastTo/shape/1:output:02model/tf.broadcast_to/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
!model/tf.broadcast_to/BroadcastToBroadcastTo(model/tf.expand_dims/ExpandDims:output:00model/tf.broadcast_to/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
model/tf.math.subtract/SubSub5model/tf.__operators__.getitem/strided_slice:output:0*model/tf.broadcast_to/BroadcastTo:output:0*
T0*+
_output_shapes
:���������n
,model/tf.compat.v1.gather_7/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :k
)model/tf.compat.v1.gather_7/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
$model/tf.compat.v1.gather_7/GatherV2GatherV2model/tf.math.subtract/Sub:z:05model/tf.compat.v1.gather_7/GatherV2/indices:output:02model/tf.compat.v1.gather_7/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������n
,model/tf.compat.v1.gather_6/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :k
)model/tf.compat.v1.gather_6/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
$model/tf.compat.v1.gather_6/GatherV2GatherV2model/tf.math.subtract/Sub:z:05model/tf.compat.v1.gather_6/GatherV2/indices:output:02model/tf.compat.v1.gather_6/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:����������
model/tf.math.multiply_6/MulMul
model_7936-model/tf.compat.v1.gather_6/GatherV2:output:0*
T0*'
_output_shapes
:����������
model/tf.math.multiply_7/MulMul
model_7939-model/tf.compat.v1.gather_7/GatherV2:output:0*
T0*'
_output_shapes
:���������g
model/tf.compat.v1.size_1/SizeSizemodel/tf.math.subtract/Sub:z:0*
T0*
_output_shapes
: �
"model/tf.__operators__.add_3/AddV2AddV2 model/tf.math.multiply_6/Mul:z:0 model/tf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������g
%model/tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
!model/tf.expand_dims_1/ExpandDims
ExpandDims&model/tf.__operators__.add_3/AddV2:z:0.model/tf.expand_dims_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������k
)model/tf.compat.v1.floor_div_1/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
'model/tf.compat.v1.floor_div_1/FloorDivFloorDiv'model/tf.compat.v1.size_1/Size:output:02model/tf.compat.v1.floor_div_1/FloorDiv/y:output:0*
T0*
_output_shapes
: n
,model/tf.compat.v1.gather_3/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :k
)model/tf.compat.v1.gather_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
$model/tf.compat.v1.gather_3/GatherV2GatherV2model/tf.math.subtract/Sub:z:05model/tf.compat.v1.gather_3/GatherV2/indices:output:02model/tf.compat.v1.gather_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������n
,model/tf.compat.v1.gather_2/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :k
)model/tf.compat.v1.gather_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
$model/tf.compat.v1.gather_2/GatherV2GatherV2model/tf.math.subtract/Sub:z:05model/tf.compat.v1.gather_2/GatherV2/indices:output:02model/tf.compat.v1.gather_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������n
,model/tf.compat.v1.gather_5/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :k
)model/tf.compat.v1.gather_5/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
$model/tf.compat.v1.gather_5/GatherV2GatherV2model/tf.math.subtract/Sub:z:05model/tf.compat.v1.gather_5/GatherV2/indices:output:02model/tf.compat.v1.gather_5/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������n
,model/tf.compat.v1.gather_4/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :k
)model/tf.compat.v1.gather_4/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
$model/tf.compat.v1.gather_4/GatherV2GatherV2model/tf.math.subtract/Sub:z:05model/tf.compat.v1.gather_4/GatherV2/indices:output:02model/tf.compat.v1.gather_4/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������m
+model/tf.broadcast_to_1/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :m
+model/tf.broadcast_to_1/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
)model/tf.broadcast_to_1/BroadcastTo/shapePack+model/tf.compat.v1.floor_div_1/FloorDiv:z:04model/tf.broadcast_to_1/BroadcastTo/shape/1:output:04model/tf.broadcast_to_1/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
#model/tf.broadcast_to_1/BroadcastToBroadcastTo*model/tf.expand_dims_1/ExpandDims:output:02model/tf.broadcast_to_1/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
model/tf.math.multiply_2/MulMul
model_7964-model/tf.compat.v1.gather_2/GatherV2:output:0*
T0*'
_output_shapes
:����������
model/tf.math.multiply_3/MulMul
model_7967-model/tf.compat.v1.gather_3/GatherV2:output:0*
T0*'
_output_shapes
:����������
model/tf.math.multiply_4/MulMul
model_7970-model/tf.compat.v1.gather_4/GatherV2:output:0*
T0*'
_output_shapes
:����������
model/tf.math.multiply_5/MulMul
model_7973-model/tf.compat.v1.gather_5/GatherV2:output:0*
T0*'
_output_shapes
:����������
model/tf.math.subtract_2/SubSubmodel/tf.math.subtract/Sub:z:0,model/tf.broadcast_to_1/BroadcastTo:output:0*
T0*+
_output_shapes
:����������
"model/tf.__operators__.add_2/AddV2AddV2 model/tf.math.multiply_4/Mul:z:0 model/tf.math.multiply_5/Mul:z:0*
T0*'
_output_shapes
:����������
"model/tf.__operators__.add_1/AddV2AddV2 model/tf.math.multiply_2/Mul:z:0 model/tf.math.multiply_3/Mul:z:0*
T0*'
_output_shapes
:���������n
,model/tf.compat.v1.gather_8/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : k
)model/tf.compat.v1.gather_8/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$model/tf.compat.v1.gather_8/GatherV2GatherV2 model/tf.math.subtract_2/Sub:z:05model/tf.compat.v1.gather_8/GatherV2/indices:output:02model/tf.compat.v1.gather_8/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes

:�
model/tf.math.subtract_1/SubSub&model/tf.__operators__.add_2/AddV2:z:0&model/tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:����������
"model/tf.compat.v1.norm_1/norm/mulMul-model/tf.compat.v1.gather_8/GatherV2:output:0-model/tf.compat.v1.gather_8/GatherV2:output:0*
T0*
_output_shapes

:~
4model/tf.compat.v1.norm_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"model/tf.compat.v1.norm_1/norm/SumSum&model/tf.compat.v1.norm_1/norm/mul:z:0=model/tf.compat.v1.norm_1/norm/Sum/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
#model/tf.compat.v1.norm_1/norm/SqrtSqrt+model/tf.compat.v1.norm_1/norm/Sum:output:0*
T0*
_output_shapes

:�
&model/tf.compat.v1.norm_1/norm/SqueezeSqueeze'model/tf.compat.v1.norm_1/norm/Sqrt:y:0*
T0*
_output_shapes
:*
squeeze_dims
 �
 model/tf.compat.v1.norm/norm/mulMul model/tf.math.subtract_1/Sub:z:0 model/tf.math.subtract_1/Sub:z:0*
T0*'
_output_shapes
:���������s
"model/tf.compat.v1.norm/norm/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 model/tf.compat.v1.norm/norm/SumSum$model/tf.compat.v1.norm/norm/mul:z:0+model/tf.compat.v1.norm/norm/Const:output:0*
T0*
_output_shapes

:*
	keep_dims(}
!model/tf.compat.v1.norm/norm/SqrtSqrt)model/tf.compat.v1.norm/norm/Sum:output:0*
T0*
_output_shapes

:w
$model/tf.compat.v1.norm/norm/SqueezeSqueeze%model/tf.compat.v1.norm/norm/Sqrt:y:0*
T0*
_output_shapes
: c
model/tf.math.multiply_8/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
model/tf.math.multiply_8/MulMul-model/tf.compat.v1.norm/norm/Squeeze:output:0'model/tf.math.multiply_8/Mul/y:output:0*
T0*
_output_shapes
: h
model/tf.math.reduce_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
model/tf.math.reduce_max/MaxMax/model/tf.compat.v1.norm_1/norm/Squeeze:output:0'model/tf.math.reduce_max/Const:output:0*
T0*
_output_shapes
: �
model/tf.math.maximum/MaximumMaximum model/tf.math.multiply_8/Mul:z:0%model/tf.math.reduce_max/Max:output:0*
T0*
_output_shapes
: �
model/tf.math.truediv/truedivRealDivmodel/tf.math.subtract/Sub:z:0!model/tf.math.maximum/Maximum:z:0*
T0*+
_output_shapes
:���������d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����"   �
model/flatten/ReshapeReshape!model/tf.math.truediv/truediv:z:0model/flatten/Const:output:0*
T0*'
_output_shapes
:���������"�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	"�*
dtype0�
model/dense/MatMulMatMulmodel/flatten/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
model/dense/Relu6Relu6model/dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������v
model/dropout/IdentityIdentitymodel/dense/Relu6:activations:0*
T0*(
_output_shapes
:�����������
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model/dense_1/MatMulMatMulmodel/dropout/Identity:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
model/dense_1/Relu6Relu6model/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@y
model/dropout_1/IdentityIdentity!model/dense_1/Relu6:activations:0*
T0*'
_output_shapes
:���������@�
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model/dense_2/MatMulMatMul!model/dropout_1/Identity:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_2/SoftmaxSoftmaxmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������n
IdentityIdentitymodel/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
$__inference_model_layer_call_fn_8532
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7:	"�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_8468o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�w
�
?__inference_model_layer_call_and_return_conditional_losses_8650
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6

dense_8632:	"�

dense_8634:	�
dense_1_8638:	�@
dense_1_8640:@
dense_2_8644:@
dense_2_8646:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinput_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskh
&tf.compat.v1.gather_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_1/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0/tf.compat.v1.gather_1/GatherV2/indices:output:0,tf.compat.v1.gather_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������f
$tf.compat.v1.gather/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :c
!tf.compat.v1.gather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0-tf.compat.v1.gather/GatherV2/indices:output:0*tf.compat.v1.gather/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������}
tf.math.multiply/MulMulunknown%tf.compat.v1.gather/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_1/MulMul	unknown_0'tf.compat.v1.gather_1/GatherV2:output:0*
T0*'
_output_shapes
:���������p
tf.compat.v1.size/SizeSize/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
: �
tf.__operators__.add/AddV2AddV2tf.math.multiply/Mul:z:0tf.math.multiply_1/Mul:z:0*
T0*'
_output_shapes
:���������_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims/ExpandDims
ExpandDimstf.__operators__.add/AddV2:z:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������c
!tf.compat.v1.floor_div/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
tf.compat.v1.floor_div/FloorDivFloorDivtf.compat.v1.size/Size:output:0*tf.compat.v1.floor_div/FloorDiv/y:output:0*
T0*
_output_shapes
: e
#tf.broadcast_to/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#tf.broadcast_to/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
!tf.broadcast_to/BroadcastTo/shapePack#tf.compat.v1.floor_div/FloorDiv:z:0,tf.broadcast_to/BroadcastTo/shape/1:output:0,tf.broadcast_to/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to/BroadcastToBroadcastTo"tf.expand_dims/ExpandDims:output:0*tf.broadcast_to/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.subtract/SubSub/tf.__operators__.getitem/strided_slice:output:0$tf.broadcast_to/BroadcastTo:output:0*
T0*+
_output_shapes
:���������h
&tf.compat.v1.gather_7/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_7/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_7/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_7/GatherV2/indices:output:0,tf.compat.v1.gather_7/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_6/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_6/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_6/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_6/GatherV2/indices:output:0,tf.compat.v1.gather_6/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:����������
tf.math.multiply_6/MulMul	unknown_1'tf.compat.v1.gather_6/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_7/MulMul	unknown_2'tf.compat.v1.gather_7/GatherV2:output:0*
T0*'
_output_shapes
:���������[
tf.compat.v1.size_1/SizeSizetf.math.subtract/Sub:z:0*
T0*
_output_shapes
: �
tf.__operators__.add_3/AddV2AddV2tf.math.multiply_6/Mul:z:0tf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������a
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims_1/ExpandDims
ExpandDims tf.__operators__.add_3/AddV2:z:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������e
#tf.compat.v1.floor_div_1/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
!tf.compat.v1.floor_div_1/FloorDivFloorDiv!tf.compat.v1.size_1/Size:output:0,tf.compat.v1.floor_div_1/FloorDiv/y:output:0*
T0*
_output_shapes
: h
&tf.compat.v1.gather_3/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_3/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_3/GatherV2/indices:output:0,tf.compat.v1.gather_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_2/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_2/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_2/GatherV2/indices:output:0,tf.compat.v1.gather_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_5/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_5/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_5/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_5/GatherV2/indices:output:0,tf.compat.v1.gather_5/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_4/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_4/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_4/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_4/GatherV2/indices:output:0,tf.compat.v1.gather_4/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������g
%tf.broadcast_to_1/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :g
%tf.broadcast_to_1/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
#tf.broadcast_to_1/BroadcastTo/shapePack%tf.compat.v1.floor_div_1/FloorDiv:z:0.tf.broadcast_to_1/BroadcastTo/shape/1:output:0.tf.broadcast_to_1/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to_1/BroadcastToBroadcastTo$tf.expand_dims_1/ExpandDims:output:0,tf.broadcast_to_1/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.multiply_2/MulMul	unknown_3'tf.compat.v1.gather_2/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_3/MulMul	unknown_4'tf.compat.v1.gather_3/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_4/MulMul	unknown_5'tf.compat.v1.gather_4/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_5/MulMul	unknown_6'tf.compat.v1.gather_5/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.subtract_2/SubSubtf.math.subtract/Sub:z:0&tf.broadcast_to_1/BroadcastTo:output:0*
T0*+
_output_shapes
:����������
tf.__operators__.add_2/AddV2AddV2tf.math.multiply_4/Mul:z:0tf.math.multiply_5/Mul:z:0*
T0*'
_output_shapes
:����������
tf.__operators__.add_1/AddV2AddV2tf.math.multiply_2/Mul:z:0tf.math.multiply_3/Mul:z:0*
T0*'
_output_shapes
:���������h
&tf.compat.v1.gather_8/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : e
#tf.compat.v1.gather_8/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
tf.compat.v1.gather_8/GatherV2GatherV2tf.math.subtract_2/Sub:z:0/tf.compat.v1.gather_8/GatherV2/indices:output:0,tf.compat.v1.gather_8/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes

:�
tf.math.subtract_1/SubSub tf.__operators__.add_2/AddV2:z:0 tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:����������
tf.compat.v1.norm_1/norm/mulMul'tf.compat.v1.gather_8/GatherV2:output:0'tf.compat.v1.gather_8/GatherV2:output:0*
T0*
_output_shapes

:x
.tf.compat.v1.norm_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
tf.compat.v1.norm_1/norm/SumSum tf.compat.v1.norm_1/norm/mul:z:07tf.compat.v1.norm_1/norm/Sum/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(u
tf.compat.v1.norm_1/norm/SqrtSqrt%tf.compat.v1.norm_1/norm/Sum:output:0*
T0*
_output_shapes

:�
 tf.compat.v1.norm_1/norm/SqueezeSqueeze!tf.compat.v1.norm_1/norm/Sqrt:y:0*
T0*
_output_shapes
:*
squeeze_dims
 �
tf.compat.v1.norm/norm/mulMultf.math.subtract_1/Sub:z:0tf.math.subtract_1/Sub:z:0*
T0*'
_output_shapes
:���������m
tf.compat.v1.norm/norm/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
tf.compat.v1.norm/norm/SumSumtf.compat.v1.norm/norm/mul:z:0%tf.compat.v1.norm/norm/Const:output:0*
T0*
_output_shapes

:*
	keep_dims(q
tf.compat.v1.norm/norm/SqrtSqrt#tf.compat.v1.norm/norm/Sum:output:0*
T0*
_output_shapes

:k
tf.compat.v1.norm/norm/SqueezeSqueezetf.compat.v1.norm/norm/Sqrt:y:0*
T0*
_output_shapes
: ]
tf.math.multiply_8/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
tf.math.multiply_8/MulMul'tf.compat.v1.norm/norm/Squeeze:output:0!tf.math.multiply_8/Mul/y:output:0*
T0*
_output_shapes
: b
tf.math.reduce_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
tf.math.reduce_max/MaxMax)tf.compat.v1.norm_1/norm/Squeeze:output:0!tf.math.reduce_max/Const:output:0*
T0*
_output_shapes
: �
tf.math.maximum/MaximumMaximumtf.math.multiply_8/Mul:z:0tf.math.reduce_max/Max:output:0*
T0*
_output_shapes
: �
tf.math.truediv/truedivRealDivtf.math.subtract/Sub:z:0tf.math.maximum/Maximum:z:0*
T0*+
_output_shapes
:����������
flatten/PartitionedCallPartitionedCalltf.math.truediv/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������"* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8134�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_8632
dense_8634*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8147�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8158�
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_8638dense_1_8640*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_8171�
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_8182�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_8644dense_2_8646*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8195w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
?__inference_dense_layer_call_and_return_conditional_losses_8147

inputs1
matmul_readvariableop_resource:	"�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	"�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������S
Relu6Relu6BiasAdd:output:0*
T0*(
_output_shapes
:����������c
IdentityIdentityRelu6:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������": : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������"
 
_user_specified_nameinputs
�

�
?__inference_dense_layer_call_and_return_conditional_losses_9170

inputs1
matmul_readvariableop_resource:	"�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	"�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������S
Relu6Relu6BiasAdd:output:0*
T0*(
_output_shapes
:����������c
IdentityIdentityRelu6:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������": : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������"
 
_user_specified_nameinputs
�
B
&__inference_dropout_layer_call_fn_9175

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8158a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_8182

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
_
A__inference_dropout_layer_call_and_return_conditional_losses_9185

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
D
(__inference_dropout_1_layer_call_fn_9222

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_8182`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
A__inference_dense_2_layer_call_and_return_conditional_losses_8195

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_8263

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�z
�
?__inference_model_layer_call_and_return_conditional_losses_8768
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6

dense_8750:	"�

dense_8752:	�
dense_1_8756:	�@
dense_1_8758:@
dense_2_8762:@
dense_2_8764:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinput_15tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskh
&tf.compat.v1.gather_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_1/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0/tf.compat.v1.gather_1/GatherV2/indices:output:0,tf.compat.v1.gather_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������f
$tf.compat.v1.gather/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :c
!tf.compat.v1.gather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0-tf.compat.v1.gather/GatherV2/indices:output:0*tf.compat.v1.gather/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������}
tf.math.multiply/MulMulunknown%tf.compat.v1.gather/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_1/MulMul	unknown_0'tf.compat.v1.gather_1/GatherV2:output:0*
T0*'
_output_shapes
:���������p
tf.compat.v1.size/SizeSize/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
: �
tf.__operators__.add/AddV2AddV2tf.math.multiply/Mul:z:0tf.math.multiply_1/Mul:z:0*
T0*'
_output_shapes
:���������_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims/ExpandDims
ExpandDimstf.__operators__.add/AddV2:z:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������c
!tf.compat.v1.floor_div/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
tf.compat.v1.floor_div/FloorDivFloorDivtf.compat.v1.size/Size:output:0*tf.compat.v1.floor_div/FloorDiv/y:output:0*
T0*
_output_shapes
: e
#tf.broadcast_to/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#tf.broadcast_to/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
!tf.broadcast_to/BroadcastTo/shapePack#tf.compat.v1.floor_div/FloorDiv:z:0,tf.broadcast_to/BroadcastTo/shape/1:output:0,tf.broadcast_to/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to/BroadcastToBroadcastTo"tf.expand_dims/ExpandDims:output:0*tf.broadcast_to/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.subtract/SubSub/tf.__operators__.getitem/strided_slice:output:0$tf.broadcast_to/BroadcastTo:output:0*
T0*+
_output_shapes
:���������h
&tf.compat.v1.gather_7/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_7/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_7/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_7/GatherV2/indices:output:0,tf.compat.v1.gather_7/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_6/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_6/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_6/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_6/GatherV2/indices:output:0,tf.compat.v1.gather_6/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:����������
tf.math.multiply_6/MulMul	unknown_1'tf.compat.v1.gather_6/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_7/MulMul	unknown_2'tf.compat.v1.gather_7/GatherV2:output:0*
T0*'
_output_shapes
:���������[
tf.compat.v1.size_1/SizeSizetf.math.subtract/Sub:z:0*
T0*
_output_shapes
: �
tf.__operators__.add_3/AddV2AddV2tf.math.multiply_6/Mul:z:0tf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������a
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims_1/ExpandDims
ExpandDims tf.__operators__.add_3/AddV2:z:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������e
#tf.compat.v1.floor_div_1/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
!tf.compat.v1.floor_div_1/FloorDivFloorDiv!tf.compat.v1.size_1/Size:output:0,tf.compat.v1.floor_div_1/FloorDiv/y:output:0*
T0*
_output_shapes
: h
&tf.compat.v1.gather_3/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_3/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_3/GatherV2/indices:output:0,tf.compat.v1.gather_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_2/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_2/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_2/GatherV2/indices:output:0,tf.compat.v1.gather_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_5/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_5/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_5/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_5/GatherV2/indices:output:0,tf.compat.v1.gather_5/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_4/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_4/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_4/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_4/GatherV2/indices:output:0,tf.compat.v1.gather_4/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������g
%tf.broadcast_to_1/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :g
%tf.broadcast_to_1/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
#tf.broadcast_to_1/BroadcastTo/shapePack%tf.compat.v1.floor_div_1/FloorDiv:z:0.tf.broadcast_to_1/BroadcastTo/shape/1:output:0.tf.broadcast_to_1/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to_1/BroadcastToBroadcastTo$tf.expand_dims_1/ExpandDims:output:0,tf.broadcast_to_1/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.multiply_2/MulMul	unknown_3'tf.compat.v1.gather_2/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_3/MulMul	unknown_4'tf.compat.v1.gather_3/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_4/MulMul	unknown_5'tf.compat.v1.gather_4/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_5/MulMul	unknown_6'tf.compat.v1.gather_5/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.subtract_2/SubSubtf.math.subtract/Sub:z:0&tf.broadcast_to_1/BroadcastTo:output:0*
T0*+
_output_shapes
:����������
tf.__operators__.add_2/AddV2AddV2tf.math.multiply_4/Mul:z:0tf.math.multiply_5/Mul:z:0*
T0*'
_output_shapes
:����������
tf.__operators__.add_1/AddV2AddV2tf.math.multiply_2/Mul:z:0tf.math.multiply_3/Mul:z:0*
T0*'
_output_shapes
:���������h
&tf.compat.v1.gather_8/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : e
#tf.compat.v1.gather_8/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
tf.compat.v1.gather_8/GatherV2GatherV2tf.math.subtract_2/Sub:z:0/tf.compat.v1.gather_8/GatherV2/indices:output:0,tf.compat.v1.gather_8/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes

:�
tf.math.subtract_1/SubSub tf.__operators__.add_2/AddV2:z:0 tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:����������
tf.compat.v1.norm_1/norm/mulMul'tf.compat.v1.gather_8/GatherV2:output:0'tf.compat.v1.gather_8/GatherV2:output:0*
T0*
_output_shapes

:x
.tf.compat.v1.norm_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
tf.compat.v1.norm_1/norm/SumSum tf.compat.v1.norm_1/norm/mul:z:07tf.compat.v1.norm_1/norm/Sum/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(u
tf.compat.v1.norm_1/norm/SqrtSqrt%tf.compat.v1.norm_1/norm/Sum:output:0*
T0*
_output_shapes

:�
 tf.compat.v1.norm_1/norm/SqueezeSqueeze!tf.compat.v1.norm_1/norm/Sqrt:y:0*
T0*
_output_shapes
:*
squeeze_dims
 �
tf.compat.v1.norm/norm/mulMultf.math.subtract_1/Sub:z:0tf.math.subtract_1/Sub:z:0*
T0*'
_output_shapes
:���������m
tf.compat.v1.norm/norm/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
tf.compat.v1.norm/norm/SumSumtf.compat.v1.norm/norm/mul:z:0%tf.compat.v1.norm/norm/Const:output:0*
T0*
_output_shapes

:*
	keep_dims(q
tf.compat.v1.norm/norm/SqrtSqrt#tf.compat.v1.norm/norm/Sum:output:0*
T0*
_output_shapes

:k
tf.compat.v1.norm/norm/SqueezeSqueezetf.compat.v1.norm/norm/Sqrt:y:0*
T0*
_output_shapes
: ]
tf.math.multiply_8/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
tf.math.multiply_8/MulMul'tf.compat.v1.norm/norm/Squeeze:output:0!tf.math.multiply_8/Mul/y:output:0*
T0*
_output_shapes
: b
tf.math.reduce_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
tf.math.reduce_max/MaxMax)tf.compat.v1.norm_1/norm/Squeeze:output:0!tf.math.reduce_max/Const:output:0*
T0*
_output_shapes
: �
tf.math.maximum/MaximumMaximumtf.math.multiply_8/Mul:z:0tf.math.reduce_max/Max:output:0*
T0*
_output_shapes
: �
tf.math.truediv/truedivRealDivtf.math.subtract/Sub:z:0tf.math.maximum/Maximum:z:0*
T0*+
_output_shapes
:����������
flatten/PartitionedCallPartitionedCalltf.math.truediv/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������"* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8134�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_8750
dense_8752*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8147�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8296�
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_8756dense_1_8758*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_8171�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_8263�
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_8762dense_2_8764*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8195w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
&__inference_dense_1_layer_call_fn_9206

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_8171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
?__inference_model_layer_call_and_return_conditional_losses_9139

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_67
$dense_matmul_readvariableop_resource:	"�4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskh
&tf.compat.v1.gather_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_1/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0/tf.compat.v1.gather_1/GatherV2/indices:output:0,tf.compat.v1.gather_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������f
$tf.compat.v1.gather/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :c
!tf.compat.v1.gather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0-tf.compat.v1.gather/GatherV2/indices:output:0*tf.compat.v1.gather/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������}
tf.math.multiply/MulMulunknown%tf.compat.v1.gather/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_1/MulMul	unknown_0'tf.compat.v1.gather_1/GatherV2:output:0*
T0*'
_output_shapes
:���������p
tf.compat.v1.size/SizeSize/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
: �
tf.__operators__.add/AddV2AddV2tf.math.multiply/Mul:z:0tf.math.multiply_1/Mul:z:0*
T0*'
_output_shapes
:���������_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims/ExpandDims
ExpandDimstf.__operators__.add/AddV2:z:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������c
!tf.compat.v1.floor_div/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
tf.compat.v1.floor_div/FloorDivFloorDivtf.compat.v1.size/Size:output:0*tf.compat.v1.floor_div/FloorDiv/y:output:0*
T0*
_output_shapes
: e
#tf.broadcast_to/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#tf.broadcast_to/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
!tf.broadcast_to/BroadcastTo/shapePack#tf.compat.v1.floor_div/FloorDiv:z:0,tf.broadcast_to/BroadcastTo/shape/1:output:0,tf.broadcast_to/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to/BroadcastToBroadcastTo"tf.expand_dims/ExpandDims:output:0*tf.broadcast_to/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.subtract/SubSub/tf.__operators__.getitem/strided_slice:output:0$tf.broadcast_to/BroadcastTo:output:0*
T0*+
_output_shapes
:���������h
&tf.compat.v1.gather_7/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_7/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_7/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_7/GatherV2/indices:output:0,tf.compat.v1.gather_7/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_6/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_6/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_6/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_6/GatherV2/indices:output:0,tf.compat.v1.gather_6/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:����������
tf.math.multiply_6/MulMul	unknown_1'tf.compat.v1.gather_6/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_7/MulMul	unknown_2'tf.compat.v1.gather_7/GatherV2:output:0*
T0*'
_output_shapes
:���������[
tf.compat.v1.size_1/SizeSizetf.math.subtract/Sub:z:0*
T0*
_output_shapes
: �
tf.__operators__.add_3/AddV2AddV2tf.math.multiply_6/Mul:z:0tf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������a
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims_1/ExpandDims
ExpandDims tf.__operators__.add_3/AddV2:z:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������e
#tf.compat.v1.floor_div_1/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
!tf.compat.v1.floor_div_1/FloorDivFloorDiv!tf.compat.v1.size_1/Size:output:0,tf.compat.v1.floor_div_1/FloorDiv/y:output:0*
T0*
_output_shapes
: h
&tf.compat.v1.gather_3/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_3/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_3/GatherV2/indices:output:0,tf.compat.v1.gather_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_2/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_2/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_2/GatherV2/indices:output:0,tf.compat.v1.gather_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_5/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_5/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_5/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_5/GatherV2/indices:output:0,tf.compat.v1.gather_5/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_4/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_4/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_4/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_4/GatherV2/indices:output:0,tf.compat.v1.gather_4/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������g
%tf.broadcast_to_1/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :g
%tf.broadcast_to_1/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
#tf.broadcast_to_1/BroadcastTo/shapePack%tf.compat.v1.floor_div_1/FloorDiv:z:0.tf.broadcast_to_1/BroadcastTo/shape/1:output:0.tf.broadcast_to_1/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to_1/BroadcastToBroadcastTo$tf.expand_dims_1/ExpandDims:output:0,tf.broadcast_to_1/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.multiply_2/MulMul	unknown_3'tf.compat.v1.gather_2/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_3/MulMul	unknown_4'tf.compat.v1.gather_3/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_4/MulMul	unknown_5'tf.compat.v1.gather_4/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_5/MulMul	unknown_6'tf.compat.v1.gather_5/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.subtract_2/SubSubtf.math.subtract/Sub:z:0&tf.broadcast_to_1/BroadcastTo:output:0*
T0*+
_output_shapes
:����������
tf.__operators__.add_2/AddV2AddV2tf.math.multiply_4/Mul:z:0tf.math.multiply_5/Mul:z:0*
T0*'
_output_shapes
:����������
tf.__operators__.add_1/AddV2AddV2tf.math.multiply_2/Mul:z:0tf.math.multiply_3/Mul:z:0*
T0*'
_output_shapes
:���������h
&tf.compat.v1.gather_8/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : e
#tf.compat.v1.gather_8/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
tf.compat.v1.gather_8/GatherV2GatherV2tf.math.subtract_2/Sub:z:0/tf.compat.v1.gather_8/GatherV2/indices:output:0,tf.compat.v1.gather_8/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes

:�
tf.math.subtract_1/SubSub tf.__operators__.add_2/AddV2:z:0 tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:����������
tf.compat.v1.norm_1/norm/mulMul'tf.compat.v1.gather_8/GatherV2:output:0'tf.compat.v1.gather_8/GatherV2:output:0*
T0*
_output_shapes

:x
.tf.compat.v1.norm_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
tf.compat.v1.norm_1/norm/SumSum tf.compat.v1.norm_1/norm/mul:z:07tf.compat.v1.norm_1/norm/Sum/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(u
tf.compat.v1.norm_1/norm/SqrtSqrt%tf.compat.v1.norm_1/norm/Sum:output:0*
T0*
_output_shapes

:�
 tf.compat.v1.norm_1/norm/SqueezeSqueeze!tf.compat.v1.norm_1/norm/Sqrt:y:0*
T0*
_output_shapes
:*
squeeze_dims
 �
tf.compat.v1.norm/norm/mulMultf.math.subtract_1/Sub:z:0tf.math.subtract_1/Sub:z:0*
T0*'
_output_shapes
:���������m
tf.compat.v1.norm/norm/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
tf.compat.v1.norm/norm/SumSumtf.compat.v1.norm/norm/mul:z:0%tf.compat.v1.norm/norm/Const:output:0*
T0*
_output_shapes

:*
	keep_dims(q
tf.compat.v1.norm/norm/SqrtSqrt#tf.compat.v1.norm/norm/Sum:output:0*
T0*
_output_shapes

:k
tf.compat.v1.norm/norm/SqueezeSqueezetf.compat.v1.norm/norm/Sqrt:y:0*
T0*
_output_shapes
: ]
tf.math.multiply_8/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
tf.math.multiply_8/MulMul'tf.compat.v1.norm/norm/Squeeze:output:0!tf.math.multiply_8/Mul/y:output:0*
T0*
_output_shapes
: b
tf.math.reduce_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
tf.math.reduce_max/MaxMax)tf.compat.v1.norm_1/norm/Squeeze:output:0!tf.math.reduce_max/Const:output:0*
T0*
_output_shapes
: �
tf.math.maximum/MaximumMaximumtf.math.multiply_8/Mul:z:0tf.math.reduce_max/Max:output:0*
T0*
_output_shapes
: �
tf.math.truediv/truedivRealDivtf.math.subtract/Sub:z:0tf.math.maximum/Maximum:z:0*
T0*+
_output_shapes
:���������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����"   �
flatten/ReshapeReshapetf.math.truediv/truediv:z:0flatten/Const:output:0*
T0*'
_output_shapes
:���������"�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	"�*
dtype0�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������_
dense/Relu6Relu6dense/BiasAdd:output:0*
T0*(
_output_shapes
:����������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout/dropout/MulMuldense/Relu6:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������^
dropout/dropout/ShapeShapedense/Relu6:activations:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_1/Relu6Relu6dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_1/dropout/MulMuldense_1/Relu6:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:���������@b
dropout_1/dropout/ShapeShapedense_1/Relu6:activations:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:���������@�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�

�
A__inference_dense_1_layer_call_and_return_conditional_losses_8171

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@R
Relu6Relu6BiasAdd:output:0*
T0*'
_output_shapes
:���������@b
IdentityIdentityRelu6:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�z
�
?__inference_model_layer_call_and_return_conditional_losses_8468

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6

dense_8450:	"�

dense_8452:	�
dense_1_8456:	�@
dense_1_8458:@
dense_2_8462:@
dense_2_8464:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
&tf.__operators__.getitem/strided_sliceStridedSliceinputs5tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_maskh
&tf.compat.v1.gather_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_1/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0/tf.compat.v1.gather_1/GatherV2/indices:output:0,tf.compat.v1.gather_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������f
$tf.compat.v1.gather/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :c
!tf.compat.v1.gather/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather/GatherV2GatherV2/tf.__operators__.getitem/strided_slice:output:0-tf.compat.v1.gather/GatherV2/indices:output:0*tf.compat.v1.gather/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������}
tf.math.multiply/MulMulunknown%tf.compat.v1.gather/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_1/MulMul	unknown_0'tf.compat.v1.gather_1/GatherV2:output:0*
T0*'
_output_shapes
:���������p
tf.compat.v1.size/SizeSize/tf.__operators__.getitem/strided_slice:output:0*
T0*
_output_shapes
: �
tf.__operators__.add/AddV2AddV2tf.math.multiply/Mul:z:0tf.math.multiply_1/Mul:z:0*
T0*'
_output_shapes
:���������_
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims/ExpandDims
ExpandDimstf.__operators__.add/AddV2:z:0&tf.expand_dims/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������c
!tf.compat.v1.floor_div/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
tf.compat.v1.floor_div/FloorDivFloorDivtf.compat.v1.size/Size:output:0*tf.compat.v1.floor_div/FloorDiv/y:output:0*
T0*
_output_shapes
: e
#tf.broadcast_to/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
#tf.broadcast_to/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
!tf.broadcast_to/BroadcastTo/shapePack#tf.compat.v1.floor_div/FloorDiv:z:0,tf.broadcast_to/BroadcastTo/shape/1:output:0,tf.broadcast_to/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to/BroadcastToBroadcastTo"tf.expand_dims/ExpandDims:output:0*tf.broadcast_to/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.subtract/SubSub/tf.__operators__.getitem/strided_slice:output:0$tf.broadcast_to/BroadcastTo:output:0*
T0*+
_output_shapes
:���������h
&tf.compat.v1.gather_7/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_7/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_7/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_7/GatherV2/indices:output:0,tf.compat.v1.gather_7/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_6/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_6/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_6/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_6/GatherV2/indices:output:0,tf.compat.v1.gather_6/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:����������
tf.math.multiply_6/MulMul	unknown_1'tf.compat.v1.gather_6/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_7/MulMul	unknown_2'tf.compat.v1.gather_7/GatherV2:output:0*
T0*'
_output_shapes
:���������[
tf.compat.v1.size_1/SizeSizetf.math.subtract/Sub:z:0*
T0*
_output_shapes
: �
tf.__operators__.add_3/AddV2AddV2tf.math.multiply_6/Mul:z:0tf.math.multiply_7/Mul:z:0*
T0*'
_output_shapes
:���������a
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
tf.expand_dims_1/ExpandDims
ExpandDims tf.__operators__.add_3/AddV2:z:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������e
#tf.compat.v1.floor_div_1/FloorDiv/yConst*
_output_shapes
: *
dtype0*
value	B :"�
!tf.compat.v1.floor_div_1/FloorDivFloorDiv!tf.compat.v1.size_1/Size:output:0,tf.compat.v1.floor_div_1/FloorDiv/y:output:0*
T0*
_output_shapes
: h
&tf.compat.v1.gather_3/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_3/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_3/GatherV2/indices:output:0,tf.compat.v1.gather_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_2/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_2/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_2/GatherV2/indices:output:0,tf.compat.v1.gather_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_5/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_5/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_5/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_5/GatherV2/indices:output:0,tf.compat.v1.gather_5/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������h
&tf.compat.v1.gather_4/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :e
#tf.compat.v1.gather_4/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
tf.compat.v1.gather_4/GatherV2GatherV2tf.math.subtract/Sub:z:0/tf.compat.v1.gather_4/GatherV2/indices:output:0,tf.compat.v1.gather_4/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:���������g
%tf.broadcast_to_1/BroadcastTo/shape/1Const*
_output_shapes
: *
dtype0*
value	B :g
%tf.broadcast_to_1/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
#tf.broadcast_to_1/BroadcastTo/shapePack%tf.compat.v1.floor_div_1/FloorDiv:z:0.tf.broadcast_to_1/BroadcastTo/shape/1:output:0.tf.broadcast_to_1/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:�
tf.broadcast_to_1/BroadcastToBroadcastTo$tf.expand_dims_1/ExpandDims:output:0,tf.broadcast_to_1/BroadcastTo/shape:output:0*
T0*+
_output_shapes
:����������
tf.math.multiply_2/MulMul	unknown_3'tf.compat.v1.gather_2/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_3/MulMul	unknown_4'tf.compat.v1.gather_3/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_4/MulMul	unknown_5'tf.compat.v1.gather_4/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.multiply_5/MulMul	unknown_6'tf.compat.v1.gather_5/GatherV2:output:0*
T0*'
_output_shapes
:����������
tf.math.subtract_2/SubSubtf.math.subtract/Sub:z:0&tf.broadcast_to_1/BroadcastTo:output:0*
T0*+
_output_shapes
:����������
tf.__operators__.add_2/AddV2AddV2tf.math.multiply_4/Mul:z:0tf.math.multiply_5/Mul:z:0*
T0*'
_output_shapes
:����������
tf.__operators__.add_1/AddV2AddV2tf.math.multiply_2/Mul:z:0tf.math.multiply_3/Mul:z:0*
T0*'
_output_shapes
:���������h
&tf.compat.v1.gather_8/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : e
#tf.compat.v1.gather_8/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
tf.compat.v1.gather_8/GatherV2GatherV2tf.math.subtract_2/Sub:z:0/tf.compat.v1.gather_8/GatherV2/indices:output:0,tf.compat.v1.gather_8/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes

:�
tf.math.subtract_1/SubSub tf.__operators__.add_2/AddV2:z:0 tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:����������
tf.compat.v1.norm_1/norm/mulMul'tf.compat.v1.gather_8/GatherV2:output:0'tf.compat.v1.gather_8/GatherV2:output:0*
T0*
_output_shapes

:x
.tf.compat.v1.norm_1/norm/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
tf.compat.v1.norm_1/norm/SumSum tf.compat.v1.norm_1/norm/mul:z:07tf.compat.v1.norm_1/norm/Sum/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(u
tf.compat.v1.norm_1/norm/SqrtSqrt%tf.compat.v1.norm_1/norm/Sum:output:0*
T0*
_output_shapes

:�
 tf.compat.v1.norm_1/norm/SqueezeSqueeze!tf.compat.v1.norm_1/norm/Sqrt:y:0*
T0*
_output_shapes
:*
squeeze_dims
 �
tf.compat.v1.norm/norm/mulMultf.math.subtract_1/Sub:z:0tf.math.subtract_1/Sub:z:0*
T0*'
_output_shapes
:���������m
tf.compat.v1.norm/norm/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
tf.compat.v1.norm/norm/SumSumtf.compat.v1.norm/norm/mul:z:0%tf.compat.v1.norm/norm/Const:output:0*
T0*
_output_shapes

:*
	keep_dims(q
tf.compat.v1.norm/norm/SqrtSqrt#tf.compat.v1.norm/norm/Sum:output:0*
T0*
_output_shapes

:k
tf.compat.v1.norm/norm/SqueezeSqueezetf.compat.v1.norm/norm/Sqrt:y:0*
T0*
_output_shapes
: ]
tf.math.multiply_8/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
tf.math.multiply_8/MulMul'tf.compat.v1.norm/norm/Squeeze:output:0!tf.math.multiply_8/Mul/y:output:0*
T0*
_output_shapes
: b
tf.math.reduce_max/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
tf.math.reduce_max/MaxMax)tf.compat.v1.norm_1/norm/Squeeze:output:0!tf.math.reduce_max/Const:output:0*
T0*
_output_shapes
: �
tf.math.maximum/MaximumMaximumtf.math.multiply_8/Mul:z:0tf.math.reduce_max/Max:output:0*
T0*
_output_shapes
: �
tf.math.truediv/truedivRealDivtf.math.subtract/Sub:z:0tf.math.maximum/Maximum:z:0*
T0*+
_output_shapes
:����������
flatten/PartitionedCallPartitionedCalltf.math.truediv/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������"* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_8134�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_8450
dense_8452*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8147�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8296�
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_8456dense_1_8458*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_8171�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_8263�
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_8462dense_2_8464*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_8195w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
`
A__inference_dropout_layer_call_and_return_conditional_losses_9197

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference_model_layer_call_fn_8875

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7:	"�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_8468o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
a
(__inference_dropout_1_layer_call_fn_9227

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_8263o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
_
&__inference_dropout_layer_call_fn_9180

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8296p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
A__inference_dense_2_layer_call_and_return_conditional_losses_9264

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
A__inference_dense_1_layer_call_and_return_conditional_losses_9217

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@R
Relu6Relu6BiasAdd:output:0*
T0*'
_output_shapes
:���������@b
IdentityIdentityRelu6:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�l
�
 __inference__traced_restore_9467
file_prefix0
assignvariableop_dense_kernel:	"�,
assignvariableop_1_dense_bias:	�4
!assignvariableop_2_dense_1_kernel:	�@-
assignvariableop_3_dense_1_bias:@3
!assignvariableop_4_dense_2_kernel:@-
assignvariableop_5_dense_2_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: :
'assignvariableop_15_adam_dense_kernel_m:	"�4
%assignvariableop_16_adam_dense_bias_m:	�<
)assignvariableop_17_adam_dense_1_kernel_m:	�@5
'assignvariableop_18_adam_dense_1_bias_m:@;
)assignvariableop_19_adam_dense_2_kernel_m:@5
'assignvariableop_20_adam_dense_2_bias_m::
'assignvariableop_21_adam_dense_kernel_v:	"�4
%assignvariableop_22_adam_dense_bias_v:	�<
)assignvariableop_23_adam_dense_1_kernel_v:	�@5
'assignvariableop_24_adam_dense_1_bias_v:@;
)assignvariableop_25_adam_dense_2_kernel_v:@5
'assignvariableop_26_adam_dense_2_bias_v:
identity_28��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
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
�	
`
A__inference_dropout_layer_call_and_return_conditional_losses_8296

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_14
serving_default_input_1:0���������;
dense_20
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer-29
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer-37
'layer-38
(layer-39
)layer-40
*layer_with_weights-0
*layer-41
+layer-42
,layer_with_weights-1
,layer-43
-layer-44
.layer_with_weights-2
.layer-45
/	optimizer
0regularization_losses
1	variables
2trainable_variables
3	keras_api
4
signatures
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
(
5	keras_api"
_tf_keras_layer
(
6	keras_api"
_tf_keras_layer
(
7	keras_api"
_tf_keras_layer
(
8	keras_api"
_tf_keras_layer
(
9	keras_api"
_tf_keras_layer
(
:	keras_api"
_tf_keras_layer
(
;	keras_api"
_tf_keras_layer
(
<	keras_api"
_tf_keras_layer
(
=	keras_api"
_tf_keras_layer
(
>	keras_api"
_tf_keras_layer
(
?	keras_api"
_tf_keras_layer
(
@	keras_api"
_tf_keras_layer
(
A	keras_api"
_tf_keras_layer
(
B	keras_api"
_tf_keras_layer
(
C	keras_api"
_tf_keras_layer
(
D	keras_api"
_tf_keras_layer
(
E	keras_api"
_tf_keras_layer
(
F	keras_api"
_tf_keras_layer
(
G	keras_api"
_tf_keras_layer
(
H	keras_api"
_tf_keras_layer
(
I	keras_api"
_tf_keras_layer
(
J	keras_api"
_tf_keras_layer
(
K	keras_api"
_tf_keras_layer
(
L	keras_api"
_tf_keras_layer
(
M	keras_api"
_tf_keras_layer
(
N	keras_api"
_tf_keras_layer
(
O	keras_api"
_tf_keras_layer
(
P	keras_api"
_tf_keras_layer
(
Q	keras_api"
_tf_keras_layer
(
R	keras_api"
_tf_keras_layer
(
S	keras_api"
_tf_keras_layer
(
T	keras_api"
_tf_keras_layer
(
U	keras_api"
_tf_keras_layer
(
V	keras_api"
_tf_keras_layer
(
W	keras_api"
_tf_keras_layer
(
X	keras_api"
_tf_keras_layer
(
Y	keras_api"
_tf_keras_layer
(
Z	keras_api"
_tf_keras_layer
(
[	keras_api"
_tf_keras_layer
�
\regularization_losses
]	variables
^trainable_variables
_	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

`kernel
abias
bregularization_losses
c	variables
dtrainable_variables
e	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
fregularization_losses
g	variables
htrainable_variables
i	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

jkernel
kbias
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

tkernel
ubias
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
ziter

{beta_1

|beta_2
	}decay
~learning_rate`m�am�jm�km�tm�um�`v�av�jv�kv�tv�uv�"
	optimizer
 "
trackable_list_wrapper
J
`0
a1
j2
k3
t4
u5"
trackable_list_wrapper
J
`0
a1
j2
k3
t4
u5"
trackable_list_wrapper
�
0regularization_losses
non_trainable_variables
�metrics
1	variables
 �layer_regularization_losses
�layers
2trainable_variables
�layer_metrics
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
\regularization_losses
�non_trainable_variables
�metrics
]	variables
 �layer_regularization_losses
�layers
^trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	"�2dense/kernel
:�2
dense/bias
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
�
bregularization_losses
�non_trainable_variables
�metrics
c	variables
 �layer_regularization_losses
�layers
dtrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
fregularization_losses
�non_trainable_variables
�metrics
g	variables
 �layer_regularization_losses
�layers
htrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	�@2dense_1/kernel
:@2dense_1/bias
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
�
lregularization_losses
�non_trainable_variables
�metrics
m	variables
 �layer_regularization_losses
�layers
ntrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
pregularization_losses
�non_trainable_variables
�metrics
q	variables
 �layer_regularization_losses
�layers
rtrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
�
vregularization_losses
�non_trainable_variables
�metrics
w	variables
 �layer_regularization_losses
�layers
xtrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45"
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
$:"	"�2Adam/dense/kernel/m
:�2Adam/dense/bias/m
&:$	�@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
%:#@2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
$:"	"�2Adam/dense/kernel/v
:�2Adam/dense/bias/v
&:$	�@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
%:#@2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
�2�
$__inference_model_layer_call_fn_8233
$__inference_model_layer_call_fn_8842
$__inference_model_layer_call_fn_8875
$__inference_model_layer_call_fn_8532�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
__inference__wrapped_model_8025input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_model_layer_call_and_return_conditional_losses_9000
?__inference_model_layer_call_and_return_conditional_losses_9139
?__inference_model_layer_call_and_return_conditional_losses_8650
?__inference_model_layer_call_and_return_conditional_losses_8768�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_flatten_layer_call_fn_9144�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_flatten_layer_call_and_return_conditional_losses_9150�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_dense_layer_call_fn_9159�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_dense_layer_call_and_return_conditional_losses_9170�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dropout_layer_call_fn_9175
&__inference_dropout_layer_call_fn_9180�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_dropout_layer_call_and_return_conditional_losses_9185
A__inference_dropout_layer_call_and_return_conditional_losses_9197�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_dense_1_layer_call_fn_9206�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_1_layer_call_and_return_conditional_losses_9217�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dropout_1_layer_call_fn_9222
(__inference_dropout_1_layer_call_fn_9227�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_dropout_1_layer_call_and_return_conditional_losses_9232
C__inference_dropout_1_layer_call_and_return_conditional_losses_9244�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_dense_2_layer_call_fn_9253�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_2_layer_call_and_return_conditional_losses_9264�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_8809input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7�
__inference__wrapped_model_8025���������`ajktu4�1
*�'
%�"
input_1���������
� "1�.
,
dense_2!�
dense_2����������
A__inference_dense_1_layer_call_and_return_conditional_losses_9217]jk0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� z
&__inference_dense_1_layer_call_fn_9206Pjk0�-
&�#
!�
inputs����������
� "����������@�
A__inference_dense_2_layer_call_and_return_conditional_losses_9264\tu/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� y
&__inference_dense_2_layer_call_fn_9253Otu/�,
%�"
 �
inputs���������@
� "�����������
?__inference_dense_layer_call_and_return_conditional_losses_9170]`a/�,
%�"
 �
inputs���������"
� "&�#
�
0����������
� x
$__inference_dense_layer_call_fn_9159P`a/�,
%�"
 �
inputs���������"
� "������������
C__inference_dropout_1_layer_call_and_return_conditional_losses_9232\3�0
)�&
 �
inputs���������@
p 
� "%�"
�
0���������@
� �
C__inference_dropout_1_layer_call_and_return_conditional_losses_9244\3�0
)�&
 �
inputs���������@
p
� "%�"
�
0���������@
� {
(__inference_dropout_1_layer_call_fn_9222O3�0
)�&
 �
inputs���������@
p 
� "����������@{
(__inference_dropout_1_layer_call_fn_9227O3�0
)�&
 �
inputs���������@
p
� "����������@�
A__inference_dropout_layer_call_and_return_conditional_losses_9185^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
A__inference_dropout_layer_call_and_return_conditional_losses_9197^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� {
&__inference_dropout_layer_call_fn_9175Q4�1
*�'
!�
inputs����������
p 
� "�����������{
&__inference_dropout_layer_call_fn_9180Q4�1
*�'
!�
inputs����������
p
� "������������
A__inference_flatten_layer_call_and_return_conditional_losses_9150\3�0
)�&
$�!
inputs���������
� "%�"
�
0���������"
� y
&__inference_flatten_layer_call_fn_9144O3�0
)�&
$�!
inputs���������
� "����������"�
?__inference_model_layer_call_and_return_conditional_losses_8650}��������`ajktu<�9
2�/
%�"
input_1���������
p 

 
� "%�"
�
0���������
� �
?__inference_model_layer_call_and_return_conditional_losses_8768}��������`ajktu<�9
2�/
%�"
input_1���������
p

 
� "%�"
�
0���������
� �
?__inference_model_layer_call_and_return_conditional_losses_9000|��������`ajktu;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
?__inference_model_layer_call_and_return_conditional_losses_9139|��������`ajktu;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
$__inference_model_layer_call_fn_8233p��������`ajktu<�9
2�/
%�"
input_1���������
p 

 
� "�����������
$__inference_model_layer_call_fn_8532p��������`ajktu<�9
2�/
%�"
input_1���������
p

 
� "�����������
$__inference_model_layer_call_fn_8842o��������`ajktu;�8
1�.
$�!
inputs���������
p 

 
� "�����������
$__inference_model_layer_call_fn_8875o��������`ajktu;�8
1�.
$�!
inputs���������
p

 
� "�����������
"__inference_signature_wrapper_8809���������`ajktu?�<
� 
5�2
0
input_1%�"
input_1���������"1�.
,
dense_2!�
dense_2���������