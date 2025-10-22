/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>38 AND p.Score<132 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>706 AND u.DownVotes<1544 AND v.CreationDate>'2011-11-11 15:26:56'::timestamp AND v.CreationDate<'2013-05-07 12:00:13'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2011-02-24 23:52:19'::timestamp AND b.Date<'2011-03-19 20:49:41'::timestamp;

