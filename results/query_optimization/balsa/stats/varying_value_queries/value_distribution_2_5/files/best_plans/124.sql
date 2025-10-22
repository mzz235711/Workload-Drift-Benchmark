/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<73 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>498 AND u.DownVotes<1767 AND v.CreationDate>'2009-11-08 01:43:57'::timestamp AND v.CreationDate<'2011-04-01 00:51:09'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2011-12-24 11:12:02'::timestamp AND b.Date<'2013-02-06 19:29:51'::timestamp;

