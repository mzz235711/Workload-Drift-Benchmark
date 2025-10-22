/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<177 AND p.CommentCount>16 AND p.CommentCount<38 AND u.DownVotes>464 AND u.DownVotes<844 AND v.CreationDate>'2010-03-17 14:06:46'::timestamp AND v.CreationDate<'2014-08-24 22:39:19'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2010-11-01 21:00:17'::timestamp AND b.Date<'2013-11-24 13:24:32'::timestamp;

