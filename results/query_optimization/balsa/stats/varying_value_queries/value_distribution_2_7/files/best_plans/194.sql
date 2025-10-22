/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<33 AND p.CommentCount>3 AND p.CommentCount<8 AND u.DownVotes>581 AND u.DownVotes<1470 AND v.CreationDate>'2011-02-19 09:32:57'::timestamp AND v.CreationDate<'2014-08-06 11:00:52'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2011-01-10 04:11:11'::timestamp AND b.Date<'2012-05-10 14:44:52'::timestamp;

