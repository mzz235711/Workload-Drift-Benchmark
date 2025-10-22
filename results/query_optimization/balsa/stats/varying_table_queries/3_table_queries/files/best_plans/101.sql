/*+ MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-09-25 09:03:09'::timestamp AND p.ViewCount<=1298 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND u.Reputation<=18088 AND u.DownVotes>=0 AND u.UpVotes=0;

