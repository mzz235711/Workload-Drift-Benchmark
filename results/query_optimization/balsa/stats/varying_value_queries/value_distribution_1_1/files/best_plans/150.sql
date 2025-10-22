/*+ MergeJoin(v u p b)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<93 AND p.CommentCount>3 AND p.CommentCount<30 AND u.DownVotes>665 AND u.DownVotes<858 AND v.CreationDate>'2010-02-25 03:50:09'::timestamp AND v.CreationDate<'2014-08-17 09:52:29'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2010-12-10 00:36:17'::timestamp AND b.Date<'2013-07-07 05:31:19'::timestamp;

