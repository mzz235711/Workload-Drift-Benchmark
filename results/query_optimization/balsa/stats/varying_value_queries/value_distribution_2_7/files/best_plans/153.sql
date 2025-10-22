/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<165 AND p.CommentCount>4 AND p.CommentCount<6 AND u.DownVotes>485 AND u.DownVotes<1220 AND v.CreationDate>'2013-02-24 23:43:23'::timestamp AND v.CreationDate<'2013-09-02 22:49:39'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-04-21 17:21:20'::timestamp AND b.Date<'2012-10-21 12:10:07'::timestamp;

