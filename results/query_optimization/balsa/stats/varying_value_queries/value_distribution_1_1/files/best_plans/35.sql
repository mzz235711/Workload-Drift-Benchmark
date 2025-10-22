/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>78 AND p.Score<142 AND p.CommentCount>1 AND p.CommentCount<3 AND u.DownVotes>38 AND u.DownVotes<453 AND v.CreationDate>'2009-09-04 14:09:07'::timestamp AND v.CreationDate<'2010-12-12 12:46:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-09-09 19:15:05'::timestamp AND b.Date<'2014-04-19 02:26:52'::timestamp;

