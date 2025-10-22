/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>18 AND p.Score<115 AND p.CommentCount>8 AND p.CommentCount<25 AND u.DownVotes>55 AND u.DownVotes<1322 AND v.CreationDate>'2010-12-17 19:53:27'::timestamp AND v.CreationDate<'2014-05-23 13:01:37'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2014-04-16 01:06:13'::timestamp AND b.Date<'2014-06-18 16:31:33'::timestamp;

