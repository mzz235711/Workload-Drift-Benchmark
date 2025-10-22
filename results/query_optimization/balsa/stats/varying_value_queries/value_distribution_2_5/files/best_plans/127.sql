/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<118 AND p.CommentCount>18 AND p.CommentCount<40 AND u.DownVotes>573 AND u.DownVotes<860 AND v.CreationDate>'2011-09-06 05:17:16'::timestamp AND v.CreationDate<'2014-02-08 19:26:13'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2013-05-18 11:33:52'::timestamp AND b.Date<'2013-12-03 07:05:17'::timestamp;

