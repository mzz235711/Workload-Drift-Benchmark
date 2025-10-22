/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<115 AND p.CommentCount>11 AND p.CommentCount<15 AND u.DownVotes>380 AND u.DownVotes<1381 AND v.CreationDate>'2010-06-21 17:12:52'::timestamp AND v.CreationDate<'2014-01-02 01:44:17'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<13 AND b.Date>'2011-03-13 11:12:01'::timestamp AND b.Date<'2013-10-11 08:56:26'::timestamp;

