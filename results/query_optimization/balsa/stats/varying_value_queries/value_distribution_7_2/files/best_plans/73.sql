/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<112 AND p.CommentCount>7 AND p.CommentCount<26 AND u.DownVotes>343 AND u.DownVotes<1022 AND v.CreationDate>'2010-06-18 23:12:17'::timestamp AND v.CreationDate<'2011-09-24 12:44:39'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2010-10-26 13:32:57'::timestamp AND b.Date<'2013-11-26 16:46:39'::timestamp;

