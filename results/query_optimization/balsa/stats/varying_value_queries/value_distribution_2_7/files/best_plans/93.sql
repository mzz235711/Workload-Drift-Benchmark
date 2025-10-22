/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>73 AND p.Score<110 AND p.CommentCount>0 AND p.CommentCount<14 AND u.DownVotes>42 AND u.DownVotes<1329 AND v.CreationDate>'2010-11-15 02:56:12'::timestamp AND v.CreationDate<'2013-09-03 23:31:28'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2011-07-13 06:31:09'::timestamp AND b.Date<'2014-05-28 19:05:20'::timestamp;

