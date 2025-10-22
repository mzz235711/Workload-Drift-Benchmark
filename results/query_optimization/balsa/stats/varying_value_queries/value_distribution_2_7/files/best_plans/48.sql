/*+ HashJoin(u b p v)
 HashJoin(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<143 AND p.CommentCount>6 AND p.CommentCount<11 AND u.DownVotes>8 AND u.DownVotes<1282 AND v.CreationDate>'2009-08-13 22:28:13'::timestamp AND v.CreationDate<'2014-08-12 20:40:09'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-01-24 17:08:27'::timestamp AND b.Date<'2012-01-21 00:14:52'::timestamp;

