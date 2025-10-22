/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<116 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>497 AND u.DownVotes<998 AND v.CreationDate>'2012-06-30 01:02:29'::timestamp AND v.CreationDate<'2014-02-15 12:14:24'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2010-11-02 00:40:46'::timestamp AND b.Date<'2011-03-08 10:32:40'::timestamp;

