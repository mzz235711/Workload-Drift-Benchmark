/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>121 AND p.Score<166 AND p.CommentCount>4 AND p.CommentCount<26 AND u.DownVotes>58 AND u.DownVotes<1152 AND v.CreationDate>'2009-08-31 14:21:11'::timestamp AND v.CreationDate<'2012-07-19 15:25:33'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2011-02-04 03:01:11'::timestamp AND b.Date<'2014-04-01 09:33:12'::timestamp;

