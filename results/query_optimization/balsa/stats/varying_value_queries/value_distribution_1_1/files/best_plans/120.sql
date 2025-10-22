/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>38 AND p.Score<151 AND p.CommentCount>0 AND p.CommentCount<25 AND u.DownVotes>650 AND u.DownVotes<1026 AND v.CreationDate>'2009-03-16 13:26:46'::timestamp AND v.CreationDate<'2012-03-09 07:47:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-08-14 09:31:29'::timestamp AND b.Date<'2014-04-29 03:38:42'::timestamp;

