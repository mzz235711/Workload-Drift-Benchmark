/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<189 AND p.CommentCount>1 AND p.CommentCount<43 AND u.DownVotes>167 AND u.DownVotes<1848 AND v.CreationDate>'2009-02-22 15:16:12'::timestamp AND v.CreationDate<'2011-10-08 12:22:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-07-27 06:27:07'::timestamp AND b.Date<'2012-10-27 07:36:37'::timestamp;

