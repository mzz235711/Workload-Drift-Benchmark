/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<76 AND p.CommentCount>4 AND p.CommentCount<24 AND u.DownVotes>703 AND u.DownVotes<1379 AND v.CreationDate>'2013-11-26 05:06:01'::timestamp AND v.CreationDate<'2014-05-29 09:00:54'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2014-02-17 12:03:21'::timestamp AND b.Date<'2014-07-29 17:24:31'::timestamp;

