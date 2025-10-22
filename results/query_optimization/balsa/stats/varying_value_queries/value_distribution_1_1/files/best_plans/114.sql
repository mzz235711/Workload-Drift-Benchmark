/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<61 AND p.CommentCount>18 AND p.CommentCount<33 AND u.DownVotes>103 AND u.DownVotes<219 AND v.CreationDate>'2010-09-22 17:03:43'::timestamp AND v.CreationDate<'2013-09-19 08:47:48'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2010-09-19 03:19:42'::timestamp AND b.Date<'2013-07-09 10:57:23'::timestamp;

