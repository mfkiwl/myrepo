
function acquire_config(this_block)

  % Revision History:
  %
  %   12-Mar-2017  (14:48 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     /home/zaid/MTP/myrepo/sysgen/stage3.v
  %
  %

  this_block.setTopLevelLanguage('Verilog');

  this_block.setEntityName('acquire');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  this_block.tagAsCombinational;

  this_block.addSimulinkInport('reset');
  this_block.addSimulinkInport('xsamples1');
  this_block.addSimulinkInport('xsamples2');
  this_block.addSimulinkInport('xsamples3');
  this_block.addSimulinkInport('xsamples4');
  this_block.addSimulinkInport('ysamples1');
  this_block.addSimulinkInport('ysamples2');
  this_block.addSimulinkInport('ysamples3');
  this_block.addSimulinkInport('ysamples4');

  this_block.addSimulinkOutport('rd_ptr1');
  this_block.addSimulinkOutport('rd_ptr2');
  this_block.addSimulinkOutport('rd_ptr3');
  this_block.addSimulinkOutport('rd_ptr4');
  this_block.addSimulinkOutport('phase_per_sample');
  this_block.addSimulinkOutport('stb_in');
  this_block.addSimulinkOutport('strbe');
  this_block.addSimulinkOutport('x_in');
  this_block.addSimulinkOutport('y_in');
  this_block.addSimulinkOutport('strbe_vect');
  this_block.addSimulinkOutport('pointer_mag');
  this_block.addSimulinkOutport('count');
  this_block.addSimulinkOutport('iterno');
  this_block.addSimulinkOutport('chunk_no');
  this_block.addSimulinkOutport('ang_pointer');
  this_block.addSimulinkOutport('iii');
  this_block.addSimulinkOutport('qqq');
  this_block.addSimulinkOutport('prn0');
  this_block.addSimulinkOutport('sum0');
  this_block.addSimulinkOutport('g10');
  this_block.addSimulinkOutport('g20');
  this_block.addSimulinkOutport('shift0');
  this_block.addSimulinkOutport('cmltve_phse');

  rd_ptr1_port = this_block.port('rd_ptr1');
  rd_ptr1_port.setType('UFix_16_0');
  rd_ptr2_port = this_block.port('rd_ptr2');
  rd_ptr2_port.setType('UFix_16_0');
  rd_ptr3_port = this_block.port('rd_ptr3');
  rd_ptr3_port.setType('UFix_16_0');
  rd_ptr4_port = this_block.port('rd_ptr4');
  rd_ptr4_port.setType('UFix_16_0');
  phase_per_sample_port = this_block.port('phase_per_sample');
  phase_per_sample_port.setType('UFix_32_0');
  stb_in_port = this_block.port('stb_in');
  stb_in_port.setType('UFix_1_0');
  stb_in_port.useHDLVector(false);
  strbe_port = this_block.port('strbe');
  strbe_port.setType('UFix_1_0');
  strbe_port.useHDLVector(false);
  x_in_port = this_block.port('x_in');
  x_in_port.setType('UFix_25_0');
  y_in_port = this_block.port('y_in');
  y_in_port.setType('UFix_25_0');
  strbe_vect_port = this_block.port('strbe_vect');
  strbe_vect_port.setType('UFix_1_0');
  strbe_vect_port.useHDLVector(false);
  pointer_mag_port = this_block.port('pointer_mag');
  pointer_mag_port.setType('UFix_9_0');
  count_port = this_block.port('count');
  count_port.setType('UFix_9_0');
  iterno_port = this_block.port('iterno');
  iterno_port.setType('UFix_3_0');
  chunk_no_port = this_block.port('chunk_no');
  chunk_no_port.setType('UFix_1_0');
  chunk_no_port.useHDLVector(false);
  ang_pointer_port = this_block.port('ang_pointer');
  ang_pointer_port.setType('UFix_8_0');
  iii_port = this_block.port('iii');
  iii_port.setType('UFix_100_0');
  qqq_port = this_block.port('qqq');
  qqq_port.setType('UFix_100_0');
  prn0_port = this_block.port('prn0');
  prn0_port.setType('UFix_4_0');
  sum0_port = this_block.port('sum0');
  sum0_port.setType('UFix_25_0');
  g10_port = this_block.port('g10');
  g10_port.setType('UFix_10_0');
  g20_port = this_block.port('g20');
  g20_port.setType('UFix_10_0');
  shift0_port = this_block.port('shift0');
  shift0_port.setType('UFix_4_0');
  cmltve_phse_port = this_block.port('cmltve_phse');
  cmltve_phse_port.setType('UFix_32_0');

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('reset').width ~= 1);
      this_block.setError('Input data type for port "reset" must have width=1.');
    end

    this_block.port('reset').useHDLVector(false);

    if (this_block.port('xsamples1').width ~= 12);
      this_block.setError('Input data type for port "xsamples1" must have width=12.');
    end

    if (this_block.port('xsamples2').width ~= 12);
      this_block.setError('Input data type for port "xsamples2" must have width=12.');
    end

    if (this_block.port('xsamples3').width ~= 12);
      this_block.setError('Input data type for port "xsamples3" must have width=12.');
    end

    if (this_block.port('xsamples4').width ~= 12);
      this_block.setError('Input data type for port "xsamples4" must have width=12.');
    end

    if (this_block.port('ysamples1').width ~= 12);
      this_block.setError('Input data type for port "ysamples1" must have width=12.');
    end

    if (this_block.port('ysamples2').width ~= 12);
      this_block.setError('Input data type for port "ysamples2" must have width=12.');
    end

    if (this_block.port('ysamples3').width ~= 12);
      this_block.setError('Input data type for port "ysamples3" must have width=12.');
    end

    if (this_block.port('ysamples4').width ~= 12);
      this_block.setError('Input data type for port "ysamples4" must have width=12.');
    end

  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'clk','ce')
   end  % if(inputRatesKnown)
  % -----------------------------

    uniqueInputRates = unique(this_block.getInputRates);

  % (!) Custimize the following generic settings as appropriate. If any settings depend
  %      on input types, make the settings in the "inputTypesKnown" code block.
  %      The addGeneric function takes  3 parameters, generic name, type and constant value.
  %      Supported types are boolean, real, integer and string.
  this_block.addGeneric('code_length','integer','1023');
  this_block.addGeneric('adds_per_clk','integer','4');
  this_block.addGeneric('input_width','integer','12');
  this_block.addGeneric('shifts_per_iter','integer','250');
  this_block.addGeneric('samples_per_ms','integer','2000');
  this_block.addGeneric('doppler_range','integer','201');
  this_block.addGeneric('flag_2','integer','1');
  %this_block.addGeneric('code_phase_per_sample','','');
  %this_block.addGeneric('clks_per_iter','','');
%   this_block.addGeneric('clks_per_iter_log2','integer','9');
%   %this_block.addGeneric('no_iter_per_freq','','');
%   this_block.addGeneric('no_iter_per_freq_log2','integer','3');
%   this_block.addGeneric('doppler_range_log2','integer','8');
%   this_block.addGeneric('mem_addr_wdth','integer','16');
%   this_block.addGeneric('adds_per_clk_log2','integer','2');
%   this_block.addGeneric('input_width_log2','integer','4');
%   %this_block.addGeneric('width_dop','','');
%   this_block.addGeneric('Num_Sat_log2','integer','5');
%   this_block.addGeneric('samples_per_ms_log2','integer','11');
%   %this_block.addGeneric('crltn_sum_width','','');
%   this_block.addGeneric('capture','integer','62');
%   this_block.addGeneric('capture_offset','integer','2');
%   this_block.addGeneric('shifts_per_iter_log2','integer','8');
% 
%   % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('stage3.v');
  this_block.addFile('Cordic_Circ_Rot.v');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------
