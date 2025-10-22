/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<81 AND p.CommentCount>5 AND p.CommentCount<29 AND u.DownVotes>16 AND u.DownVotes<1631 AND v.CreationDate>'2009-03-04 09:31:06'::timestamp AND v.CreationDate<'2013-06-24 15:25:05'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2011-04-10 19:21:26'::timestamp AND b.Date<'2011-10-03 17:03:42'::timestamp;

