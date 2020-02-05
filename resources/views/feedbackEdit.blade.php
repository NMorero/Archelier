@extends('layouts.base')

@section('content')
    <main class="container-fluid row d-flex py-2 justify-content-between pr-1">
        <div class="col-9" style="height:85vh">
            <img src="/{{$feedback->image}}" alt="" height="100%" width="100%">
        </div>

        <div class="col-3 ">



            <form action="/Actions" id="editFeedback" name="editFeedback">
                @foreach ($feedback->comments as $comment)
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="comment{{$comment['id']}}" @if ($comment['status'] == 'done')
                    checked
                @endif>
                    <label class="custom-control-label" for="comment{{$comment['id']}}" >{{$comment['comment']}}</label>
                </div>
                @endforeach
                <button type="submit">Save</button>
            </form>
        </div>
    </main>
@endsection

@section('scripts')
    <script src="{{asset('js/feedbacks.js')}}"></script>
@endsection
