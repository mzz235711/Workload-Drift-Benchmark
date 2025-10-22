/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<177 AND p.CommentCount>5 AND p.CommentCount<25 AND u.DownVotes>350 AND u.DownVotes<557 AND v.CreationDate>'2009-09-16 13:19:42'::timestamp AND v.CreationDate<'2012-11-28 08:21:22'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2013-08-19 10:00:23'::timestamp AND b.Date<'2013-10-10 19:47:25'::timestamp;

