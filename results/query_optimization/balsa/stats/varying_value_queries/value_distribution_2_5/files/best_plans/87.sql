/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>86 AND p.Score<171 AND p.CommentCount>1 AND p.CommentCount<24 AND u.DownVotes>447 AND u.DownVotes<1763 AND v.CreationDate>'2009-05-05 22:53:38'::timestamp AND v.CreationDate<'2013-10-19 19:17:13'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2014-05-22 14:01:51'::timestamp AND b.Date<'2014-07-24 06:28:14'::timestamp;

