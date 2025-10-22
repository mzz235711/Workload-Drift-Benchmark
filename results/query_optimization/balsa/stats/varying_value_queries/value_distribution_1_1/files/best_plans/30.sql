/*+ MergeJoin(p v u b)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((((p v) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<75 AND p.CommentCount>1 AND p.CommentCount<26 AND u.DownVotes>228 AND u.DownVotes<1532 AND v.CreationDate>'2010-04-21 02:24:17'::timestamp AND v.CreationDate<'2012-01-29 03:30:55'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-09-08 03:31:09'::timestamp AND b.Date<'2014-07-13 12:03:14'::timestamp;

