/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<139 AND p.CommentCount>16 AND p.CommentCount<39 AND u.DownVotes>57 AND u.DownVotes<826 AND v.CreationDate>'2009-11-25 01:18:16'::timestamp AND v.CreationDate<'2011-03-16 18:33:55'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2010-08-07 05:19:11'::timestamp AND b.Date<'2011-11-22 18:59:26'::timestamp;

