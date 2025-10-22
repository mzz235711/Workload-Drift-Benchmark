/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<125 AND p.CommentCount>8 AND p.CommentCount<15 AND u.DownVotes>417 AND u.DownVotes<1193 AND v.CreationDate>'2013-07-27 12:10:53'::timestamp AND v.CreationDate<'2014-05-08 22:20:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-02-25 21:33:58'::timestamp AND b.Date<'2014-01-22 19:09:30'::timestamp;

