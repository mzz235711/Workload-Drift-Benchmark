/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<109 AND p.CommentCount>4 AND p.CommentCount<40 AND u.DownVotes>374 AND u.DownVotes<416 AND v.CreationDate>'2011-05-16 23:53:53'::timestamp AND v.CreationDate<'2013-01-08 22:36:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-06-29 00:03:17'::timestamp AND b.Date<'2013-05-18 19:50:29'::timestamp;

