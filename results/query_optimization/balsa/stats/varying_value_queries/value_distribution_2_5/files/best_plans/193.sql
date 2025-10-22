/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<91 AND p.CommentCount>15 AND p.CommentCount<20 AND u.DownVotes>261 AND u.DownVotes<1215 AND v.CreationDate>'2012-03-24 10:04:18'::timestamp AND v.CreationDate<'2014-03-28 12:27:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-04-09 11:18:57'::timestamp AND b.Date<'2014-02-23 18:32:52'::timestamp;

