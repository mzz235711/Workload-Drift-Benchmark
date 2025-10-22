/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<150 AND p.CommentCount>2 AND p.CommentCount<23 AND u.DownVotes>633 AND u.DownVotes<1083 AND v.CreationDate>'2011-02-25 00:50:59'::timestamp AND v.CreationDate<'2011-07-24 22:33:18'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-07-22 23:38:47'::timestamp AND b.Date<'2014-04-13 04:35:25'::timestamp;

