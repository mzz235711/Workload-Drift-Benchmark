/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>79 AND p.Score<181 AND p.CommentCount>10 AND p.CommentCount<35 AND u.DownVotes>37 AND u.DownVotes<878 AND v.CreationDate>'2009-03-19 12:11:23'::timestamp AND v.CreationDate<'2012-10-11 02:43:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-08-06 09:13:42'::timestamp AND b.Date<'2010-10-10 23:04:41'::timestamp;

