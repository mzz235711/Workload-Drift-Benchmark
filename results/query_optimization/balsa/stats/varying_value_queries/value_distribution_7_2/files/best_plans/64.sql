/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>137 AND p.Score<144 AND p.CommentCount>1 AND p.CommentCount<14 AND u.DownVotes>83 AND u.DownVotes<1147 AND v.CreationDate>'2011-03-04 02:11:17'::timestamp AND v.CreationDate<'2012-08-19 22:14:46'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2010-12-15 13:11:54'::timestamp AND b.Date<'2011-11-19 19:18:54'::timestamp;

