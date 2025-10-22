/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<17 AND p.CommentCount>15 AND p.CommentCount<26 AND u.DownVotes>390 AND u.DownVotes<1196 AND v.CreationDate>'2009-12-05 00:28:35'::timestamp AND v.CreationDate<'2012-04-05 17:18:35'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2014-03-05 04:45:58'::timestamp AND b.Date<'2014-03-08 08:03:41'::timestamp;

