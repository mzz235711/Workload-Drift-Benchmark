/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<186 AND p.CommentCount>5 AND p.CommentCount<23 AND u.DownVotes>82 AND u.DownVotes<1495 AND v.CreationDate>'2009-10-02 15:32:32'::timestamp AND v.CreationDate<'2012-06-26 07:03:45'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2012-04-24 21:33:00'::timestamp AND b.Date<'2013-06-30 20:49:56'::timestamp;

