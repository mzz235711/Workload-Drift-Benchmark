/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<175 AND p.CommentCount>13 AND p.CommentCount<23 AND u.DownVotes>78 AND u.DownVotes<1060 AND v.CreationDate>'2011-02-08 00:53:26'::timestamp AND v.CreationDate<'2013-01-31 22:56:34'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2011-02-04 00:34:25'::timestamp AND b.Date<'2014-07-14 09:22:15'::timestamp;

