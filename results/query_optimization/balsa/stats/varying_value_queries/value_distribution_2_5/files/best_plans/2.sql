/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<106 AND p.CommentCount>4 AND p.CommentCount<44 AND u.DownVotes>75 AND u.DownVotes<1317 AND v.CreationDate>'2011-02-28 05:10:36'::timestamp AND v.CreationDate<'2011-08-08 14:41:27'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<12 AND b.Date>'2011-08-08 04:49:20'::timestamp AND b.Date<'2013-10-04 07:52:43'::timestamp;

