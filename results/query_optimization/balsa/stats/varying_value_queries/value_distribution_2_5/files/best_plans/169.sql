/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<187 AND p.CommentCount>11 AND p.CommentCount<39 AND u.DownVotes>234 AND u.DownVotes<1555 AND v.CreationDate>'2012-05-18 16:32:21'::timestamp AND v.CreationDate<'2012-10-26 04:51:31'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<15 AND b.Date>'2013-10-11 15:14:49'::timestamp AND b.Date<'2014-08-19 10:57:34'::timestamp;

