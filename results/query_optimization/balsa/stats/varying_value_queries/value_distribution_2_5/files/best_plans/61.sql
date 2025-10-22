/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<116 AND p.CommentCount>2 AND p.CommentCount<14 AND u.DownVotes>691 AND u.DownVotes<1011 AND v.CreationDate>'2011-07-25 07:27:32'::timestamp AND v.CreationDate<'2013-04-04 20:14:51'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2012-06-14 19:06:48'::timestamp AND b.Date<'2013-10-30 03:28:34'::timestamp;

