/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<109 AND p.CommentCount>4 AND p.CommentCount<38 AND u.DownVotes>18 AND u.DownVotes<985 AND v.CreationDate>'2009-05-05 01:12:06'::timestamp AND v.CreationDate<'2014-01-29 14:03:28'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-11-21 00:41:10'::timestamp AND b.Date<'2013-10-17 16:40:51'::timestamp;

