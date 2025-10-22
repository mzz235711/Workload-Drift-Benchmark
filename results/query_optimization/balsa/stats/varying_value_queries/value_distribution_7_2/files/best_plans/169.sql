/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<30 AND p.CommentCount>2 AND p.CommentCount<43 AND u.DownVotes>152 AND u.DownVotes<659 AND v.CreationDate>'2011-03-29 10:53:45'::timestamp AND v.CreationDate<'2012-11-23 04:51:46'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2011-03-16 04:31:10'::timestamp AND b.Date<'2014-07-17 08:53:33'::timestamp;

