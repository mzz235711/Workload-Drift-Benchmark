/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<28 AND p.CommentCount>14 AND p.CommentCount<44 AND u.DownVotes>82 AND u.DownVotes<1418 AND v.CreationDate>'2009-06-09 20:51:56'::timestamp AND v.CreationDate<'2012-08-19 01:03:14'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2011-02-03 01:41:34'::timestamp AND b.Date<'2013-06-14 06:59:41'::timestamp;

