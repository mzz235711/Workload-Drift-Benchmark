/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<161 AND p.CommentCount>7 AND p.CommentCount<23 AND u.DownVotes>542 AND u.DownVotes<890 AND v.CreationDate>'2010-03-01 18:30:48'::timestamp AND v.CreationDate<'2012-06-23 14:44:13'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<10 AND b.Date>'2013-06-29 09:22:15'::timestamp AND b.Date<'2014-02-18 01:05:17'::timestamp;

