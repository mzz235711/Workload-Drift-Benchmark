/*+ HashJoin(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<179 AND p.CommentCount>6 AND p.CommentCount<28 AND u.DownVotes>353 AND u.DownVotes<1705 AND v.CreationDate>'2012-05-06 08:53:56'::timestamp AND v.CreationDate<'2014-03-01 14:11:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-01-24 18:14:52'::timestamp AND b.Date<'2013-04-28 10:34:30'::timestamp;

