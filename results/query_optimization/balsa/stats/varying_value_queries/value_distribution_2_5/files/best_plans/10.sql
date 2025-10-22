/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<52 AND p.CommentCount>11 AND p.CommentCount<30 AND u.DownVotes>678 AND u.DownVotes<828 AND v.CreationDate>'2009-02-24 18:06:55'::timestamp AND v.CreationDate<'2013-08-04 16:59:21'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-09-28 04:32:18'::timestamp AND b.Date<'2013-06-21 13:44:56'::timestamp;

