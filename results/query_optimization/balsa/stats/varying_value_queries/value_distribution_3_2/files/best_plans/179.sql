/*+ HashJoin(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 SeqScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<74 AND p.CommentCount>3 AND p.CommentCount<37 AND u.DownVotes>122 AND u.DownVotes<1136 AND v.CreationDate>'2011-08-24 13:54:19'::timestamp AND v.CreationDate<'2014-04-24 09:07:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-07-15 14:56:33'::timestamp AND b.Date<'2012-10-03 09:28:26'::timestamp;

