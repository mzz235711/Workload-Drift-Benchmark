/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<123 AND p.CommentCount>0 AND p.CommentCount<13 AND u.DownVotes>172 AND u.DownVotes<1088 AND v.CreationDate>'2009-04-03 03:15:14'::timestamp AND v.CreationDate<'2012-11-28 11:20:45'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2012-11-22 20:01:28'::timestamp AND b.Date<'2013-07-06 16:18:30'::timestamp;

