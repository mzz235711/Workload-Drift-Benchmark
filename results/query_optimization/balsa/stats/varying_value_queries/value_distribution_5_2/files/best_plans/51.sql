/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<150 AND p.CommentCount>4 AND p.CommentCount<25 AND u.DownVotes>575 AND u.DownVotes<1462 AND v.CreationDate>'2009-04-27 05:14:43'::timestamp AND v.CreationDate<'2012-11-14 11:59:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2013-06-10 13:12:10'::timestamp AND b.Date<'2014-05-17 19:51:23'::timestamp;

