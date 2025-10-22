/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<159 AND p.CommentCount>2 AND p.CommentCount<42 AND u.DownVotes>439 AND u.DownVotes<1090 AND v.CreationDate>'2010-10-23 20:12:06'::timestamp AND v.CreationDate<'2013-06-30 11:08:22'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-11-20 21:39:59'::timestamp AND b.Date<'2013-11-10 00:26:09'::timestamp;

