/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<45 AND p.CommentCount>1 AND p.CommentCount<30 AND u.DownVotes>727 AND u.DownVotes<1789 AND v.CreationDate>'2011-04-19 05:51:47'::timestamp AND v.CreationDate<'2013-08-17 03:30:59'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2012-04-08 14:58:03'::timestamp AND b.Date<'2014-05-19 10:46:31'::timestamp;

