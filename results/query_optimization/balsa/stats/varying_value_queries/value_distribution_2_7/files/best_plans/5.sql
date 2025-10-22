/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<78 AND p.CommentCount>4 AND p.CommentCount<14 AND u.DownVotes>460 AND u.DownVotes<1333 AND v.CreationDate>'2009-02-20 21:53:07'::timestamp AND v.CreationDate<'2011-11-07 05:34:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2011-12-26 08:42:21'::timestamp AND b.Date<'2014-05-16 10:11:51'::timestamp;

