/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>30 AND p.Score<171 AND p.CommentCount>4 AND p.CommentCount<18 AND u.DownVotes>123 AND u.DownVotes<1590 AND v.CreationDate>'2010-03-15 11:10:46'::timestamp AND v.CreationDate<'2010-09-14 09:38:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-06-01 18:05:12'::timestamp AND b.Date<'2011-12-11 04:04:55'::timestamp;

