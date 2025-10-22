/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<96 AND p.CommentCount>2 AND p.CommentCount<7 AND u.DownVotes>26 AND u.DownVotes<1087 AND v.CreationDate>'2012-02-28 22:15:32'::timestamp AND v.CreationDate<'2012-07-19 20:19:02'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2011-04-30 10:43:36'::timestamp AND b.Date<'2012-08-11 04:33:12'::timestamp;

