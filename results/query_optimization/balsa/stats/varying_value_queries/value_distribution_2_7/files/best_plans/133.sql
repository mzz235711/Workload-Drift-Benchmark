/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<111 AND p.CommentCount>15 AND p.CommentCount<43 AND u.DownVotes>66 AND u.DownVotes<1318 AND v.CreationDate>'2011-03-24 11:15:41'::timestamp AND v.CreationDate<'2012-12-16 01:25:15'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<12 AND b.Date>'2012-11-19 07:52:09'::timestamp AND b.Date<'2013-05-26 06:51:53'::timestamp;

