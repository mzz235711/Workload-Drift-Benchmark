/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<191 AND p.CommentCount>13 AND p.CommentCount<24 AND u.DownVotes>139 AND u.DownVotes<306 AND v.CreationDate>'2010-05-17 17:56:23'::timestamp AND v.CreationDate<'2012-09-17 08:33:36'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2013-01-13 23:52:22'::timestamp AND b.Date<'2013-04-23 07:39:54'::timestamp;

