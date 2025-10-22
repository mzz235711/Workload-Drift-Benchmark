/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<122 AND p.CommentCount>3 AND p.CommentCount<26 AND u.DownVotes>194 AND u.DownVotes<781 AND v.CreationDate>'2009-10-08 01:43:23'::timestamp AND v.CreationDate<'2013-10-06 00:55:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2011-11-21 17:25:43'::timestamp AND b.Date<'2013-08-23 19:15:43'::timestamp;

